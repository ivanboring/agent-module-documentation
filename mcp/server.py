#!/usr/bin/env python3
"""
Agent Module Docs — MCP server (hybrid search over a prebuilt docs.db).

Self-contained: reads only docs.db (module metadata, doc bodies, FTS5 lexical index and
sqlite-vec vectors are all inside it). No access to the corpus filesystem at runtime.

Search is hybrid — FTS5 BM25 (lexical) fused with sqlite-vec KNN (semantic) via Reciprocal
Rank Fusion. Query embedding uses the SAME model as the build (shared embed.py), and the
server refuses to start if the DB was built with a different model.

Run (stdio, for local clients like Claude Code registration):
    python server.py                       # DOCS_DB=docs.db by default

Run (HTTP, for the DDEV add-on service):
    python server.py --http --host 0.0.0.0 --port 9130
    # endpoint: http://<host>:<port>/mcp

Env: DOCS_DB=/path/to/docs.db
"""
import argparse
import json
import os
import sqlite3
import struct
import sys

import sqlite_vec

from embed import MODEL_NAME, embed_one

DB_PATH = os.environ.get("DOCS_DB") or os.path.join(os.path.dirname(os.path.abspath(__file__)), "docs.db")
RRF_K = 60  # reciprocal-rank-fusion constant


def log(*a):
    print(*a, file=sys.stderr, flush=True)


# --------------------------------------------------------------------------- #
# DB                                                                           #
# --------------------------------------------------------------------------- #

def open_db(path):
    if not os.path.exists(path):
        log(f"[fatal] docs.db not found at {path} (set DOCS_DB)")
        sys.exit(1)
    con = sqlite3.connect(f"file:{path}?mode=ro", uri=True, check_same_thread=False)
    con.row_factory = sqlite3.Row
    con.enable_load_extension(True)
    sqlite_vec.load(con)
    con.enable_load_extension(False)
    con.execute("PRAGMA query_only = ON")
    meta = con.execute("SELECT * FROM meta LIMIT 1").fetchone()
    if meta and meta["model_name"] != MODEL_NAME:
        log(f"[fatal] DB built with model {meta['model_name']!r} but server embeds with "
            f"{MODEL_NAME!r} — semantic search would be meaningless. Rebuild or match.")
        sys.exit(1)
    n = con.execute("SELECT COUNT(*) FROM modules").fetchone()[0]
    d = con.execute("SELECT COUNT(*) FROM docs").fetchone()[0]
    log(f"[db] {path} — {n} module-versions, {d} doc units, model {MODEL_NAME}")
    return con


DB = None  # set in main()


# --------------------------------------------------------------------------- #
# Search primitives                                                            #
# --------------------------------------------------------------------------- #

def fts_match(query):
    """Turn free text into a safe FTS5 OR-query (bare tokens can break the parser)."""
    toks = [t for t in "".join(c if c.isalnum() else " " for c in query).split() if t]
    return " OR ".join(toks) if toks else '""'


def serialize_vec(vec):
    return struct.pack("%sf" % len(vec), *(float(x) for x in vec))


def hybrid_doc_ids(query, pool=50):
    """Return fused (doc_id -> score) over lexical + semantic, best-first."""
    scores = {}
    try:
        lex = DB.execute(
            "SELECT rowid FROM docs_fts WHERE docs_fts MATCH ? ORDER BY rank LIMIT ?",
            (fts_match(query), pool)).fetchall()
        for rank, row in enumerate(lex):
            scores[row[0]] = scores.get(row[0], 0.0) + 1.0 / (RRF_K + rank)
    except sqlite3.OperationalError as e:
        log(f"[warn] FTS query failed: {e}")

    try:
        blob = serialize_vec(embed_one(query))
        sem = DB.execute(
            "SELECT rowid FROM vec_docs WHERE embedding MATCH ? AND k = ? ORDER BY distance",
            (blob, pool)).fetchall()
        for rank, row in enumerate(sem):
            scores[row[0]] = scores.get(row[0], 0.0) + 1.0 / (RRF_K + rank)
    except Exception as e:
        log(f"[warn] vector query failed (lexical-only): {e}")

    return sorted(scores.items(), key=lambda kv: kv[1], reverse=True)


def module_row(machine_name, version=None):
    if version:
        return DB.execute(
            "SELECT * FROM modules WHERE machine_name=? AND version=?",
            (machine_name, version)).fetchone()
    return DB.execute(
        "SELECT * FROM modules WHERE machine_name=? ORDER BY is_latest DESC, version DESC LIMIT 1",
        (machine_name,)).fetchone()


# --------------------------------------------------------------------------- #
# Tools                                                                        #
# --------------------------------------------------------------------------- #

def do_search(query, category=None, limit=20):
    fused = hybrid_doc_ids(query, pool=max(50, limit * 4))
    seen, results = set(), []
    for doc_id, score in fused:
        d = DB.execute(
            "SELECT machine_name, module_id FROM docs WHERE id=?", (doc_id,)).fetchone()
        if not d or d["machine_name"] in seen:
            continue
        m = DB.execute("SELECT * FROM modules WHERE id=?", (d["module_id"],)).fetchone()
        cats = json.loads(m["categories"] or "[]")
        if category and category.lower() not in " ".join(cats).lower():
            continue
        seen.add(d["machine_name"])
        # newest version for display
        latest = module_row(d["machine_name"])
        versions = [r["version"] for r in DB.execute(
            "SELECT version FROM modules WHERE machine_name=? ORDER BY version",
            (d["machine_name"],)).fetchall()]
        results.append({
            "machine_name": latest["machine_name"],
            "name": latest["name"],
            "description": latest["description"],
            "versions": versions,
            "active_installs": latest["active_installs"],
            "categories": json.loads(latest["categories"] or "[]"),
            "project_url": latest["project_url"],
            "score": round(score, 4),
        })
        if len(results) >= limit:
            break
    if not results:
        return "No modules matched. Try broader keywords, or list_categories to browse."
    return json.dumps({"query": query, "category": category, "results": results}, indent=2)


def module_docs(module_id):
    return DB.execute(
        "SELECT doc_type, doc_path, title FROM docs WHERE module_id=? ORDER BY doc_type, doc_path",
        (module_id,)).fetchall()


def do_get_module(machine_name, version=None):
    m = module_row(machine_name, version)
    if not m:
        return (f"Unknown module '{machine_name}'"
                + (f" at version {version}" if version else "")
                + ". Use search_modules to find the right machine name.")
    parts = [f"# {m['name']} ({m['machine_name']}) — {m['version']}"]
    if m["data_json"]:
        parts.append("## data.json\n```json\n"
                     + json.dumps(json.loads(m["data_json"]), indent=2) + "\n```")
    start = DB.execute(
        "SELECT body FROM docs WHERE module_id=? AND doc_type='start' LIMIT 1",
        (m["id"],)).fetchone()
    if start:
        parts.append("## agent/start.md\n" + start["body"])
    usage = DB.execute(
        "SELECT body FROM docs WHERE module_id=? AND doc_type='usage' ORDER BY doc_path",
        (m["id"],)).fetchall()
    if usage:
        parts.append("## usage.md\n" + "\n\n---\n\n".join(u["body"] for u in usage))
    docs = module_docs(m["id"])
    parts.append("## available docs (use read_doc)\n"
                 + "\n".join(f"- {r['doc_path']}  ({r['doc_type']})" for r in docs))
    return "\n\n".join(parts)


def do_list_docs(machine_name, version=None):
    m = module_row(machine_name, version)
    if not m:
        return f"Unknown module '{machine_name}'. Use search_modules first."
    docs = [{"doc_path": r["doc_path"], "doc_type": r["doc_type"], "title": r["title"]}
            for r in module_docs(m["id"])]
    return json.dumps({"machine_name": m["machine_name"], "version": m["version"],
                       "docs": docs}, indent=2)


def do_read_doc(machine_name, doc_path, version=None):
    m = module_row(machine_name, version)
    if not m:
        return f"Unknown module '{machine_name}'. Use search_modules first."
    # exact match, then tolerate a missing 'agent/' prefix or a usage.md base path
    rows = DB.execute(
        "SELECT doc_path, body FROM docs WHERE module_id=? AND "
        "(doc_path=? OR doc_path=? OR doc_path LIKE ?) ORDER BY doc_path",
        (m["id"], doc_path, f"agent/{doc_path}", f"{doc_path}#%")).fetchall()
    if not rows:
        avail = "\n".join(f"- {r['doc_path']}" for r in module_docs(m["id"]))
        return f"Doc '{doc_path}' not found for {machine_name} {m['version']}.\nAvailable:\n{avail}"
    if len(rows) == 1:
        return rows[0]["body"]
    return "\n\n---\n\n".join(r["body"] for r in rows)  # e.g. all usage.md sections


def do_list_categories():
    counts = {}
    for r in DB.execute("SELECT categories FROM modules WHERE is_latest=1").fetchall():
        for c in json.loads(r["categories"] or "[]"):
            counts[c] = counts.get(c, 0) + 1
    ordered = sorted(counts.items(), key=lambda kv: kv[1], reverse=True)
    return json.dumps({"categories": [{"name": c, "modules": n} for c, n in ordered]}, indent=2)


# --------------------------------------------------------------------------- #
# MCP wiring (FastMCP — stdio or streamable HTTP)                              #
# --------------------------------------------------------------------------- #

def build_app(host, port):
    from mcp.server.fastmcp import FastMCP
    mcp = FastMCP("agent-module-docs", host=host, port=port)

    @mcp.tool()
    def search_modules(query: str, category: str = "", limit: int = 20) -> str:
        """Search the Drupal module knowledge base by free-text query and/or category
        (hybrid lexical+semantic). Returns matching modules with machine name, description,
        versions, install count and categories. Start here, then call get_module."""
        return do_search(query, category or None, limit)

    @mcp.tool()
    def get_module(machine_name: str, version: str = "") -> str:
        """Get the agent docs for one module: data.json metadata, agent/start.md, usage.md,
        and the list of deeper docs available via read_doc. Newest version by default."""
        return do_get_module(machine_name, version or None)

    @mcp.tool()
    def list_docs(machine_name: str, version: str = "") -> str:
        """List every doc unit (start, usage sections, agent/**) for a module version."""
        return do_list_docs(machine_name, version or None)

    @mcp.tool()
    def read_doc(machine_name: str, doc_path: str, version: str = "") -> str:
        """Read one documentation unit by path, e.g. 'agent/api/token-service.md' (the
        'agent/' prefix may be omitted). Get paths from get_module or list_docs."""
        return do_read_doc(machine_name, doc_path, version or None)

    @mcp.tool()
    def list_categories() -> str:
        """List all module categories with a count of modules in each."""
        return do_list_categories()

    return mcp


def main():
    global DB
    ap = argparse.ArgumentParser()
    ap.add_argument("--http", action="store_true", help="serve Streamable HTTP instead of stdio")
    ap.add_argument("--host", default="127.0.0.1")
    ap.add_argument("--port", type=int, default=9130)
    ap.add_argument("--db", default=DB_PATH)
    args = ap.parse_args()

    DB = open_db(args.db)
    mcp = build_app(args.host, args.port)
    if args.http:
        log(f"[server] HTTP MCP on http://{args.host}:{args.port}/mcp")
        mcp.run(transport="streamable-http")
    else:
        log("[server] stdio MCP ready")
        mcp.run(transport="stdio")


if __name__ == "__main__":
    main()
