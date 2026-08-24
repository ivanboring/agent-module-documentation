#!/usr/bin/env python3
"""Ad-hoc hybrid-search harness to eyeball retrieval quality on a built docs.db."""
import sqlite3, struct, sys, time
import sqlite_vec
from embed import embed_one

DB = sys.argv[1] if len(sys.argv) > 1 else "sample.db"

con = sqlite3.connect(DB)
con.enable_load_extension(True); sqlite_vec.load(con); con.enable_load_extension(False)


def embed_query(q):
    return embed_one(q)


def fts_query(q):
    # OR the terms so partial matches still rank; quote to avoid FTS syntax errors.
    terms = [t for t in ''.join(c if c.isalnum() else ' ' for c in q).split() if t]
    return " OR ".join(terms) if terms else q


def search(q, k=8, pool=40):
    lex = con.execute(
        "SELECT rowid, rank FROM docs_fts WHERE docs_fts MATCH ? "
        "ORDER BY rank LIMIT ?", (fts_query(q), pool)).fetchall()
    qv = embed_query(q)
    blob = struct.pack("%sf" % len(qv), *map(float, qv))
    sem = con.execute(
        "SELECT rowid, distance FROM vec_docs WHERE embedding MATCH ? AND k = ? "
        "ORDER BY distance", (blob, pool)).fetchall()
    # Reciprocal rank fusion
    score = {}
    for rank, (rid, _) in enumerate(lex):
        score[rid] = score.get(rid, 0) + 1.0 / (60 + rank)
    for rank, (rid, _) in enumerate(sem):
        score[rid] = score.get(rid, 0) + 1.0 / (60 + rank)
    ranked = sorted(score, key=score.get, reverse=True)
    # group by module, best doc wins
    seen, rows = set(), []
    for rid in ranked:
        d = con.execute(
            "SELECT machine_name, version, doc_type, doc_path, title FROM docs WHERE id=?",
            (rid,)).fetchone()
        if d[0] in seen:
            continue
        seen.add(d[0]); rows.append((score[rid], d))
        if len(rows) >= k:
            break
    return rows


for q in ["send email with SMTP", "restrict access to nodes by role", "image styles and cropping",
          "REST API authentication token", "schedule content to publish later",
          "spam protection on webforms", "single sign-on with SAML"]:
    print(f"\n=== {q!r} ===")
    t = time.time()
    for sc, d in search(q):
        print(f"  {sc:.4f}  {d[0]:<28} {d[2]:<6} {d[4][:50]}")
    print(f"  ({(time.time()-t)*1000:.0f} ms)")
