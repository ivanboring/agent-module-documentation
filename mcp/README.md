# Agent Module Docs — MCP server

Hybrid-search MCP server over the Drupal module knowledge base. An AI client searches and
reads the compact `agent/**` docs instead of a module's source.

- **Search:** hybrid — FTS5 BM25 (lexical) + `sqlite-vec` (semantic) fused with Reciprocal
  Rank Fusion. Embeddings via `model2vec` (static, no torch/onnx).
- **Self-contained:** the server reads only `docs.db` — module metadata, doc bodies, the FTS
  index and the vectors all live inside it. No corpus filesystem needed at runtime.
- **Transports:** stdio (local clients) and Streamable HTTP (the DDEV add-on service).

See [`DESIGN.md`](DESIGN.md) for the full architecture and the CI / DDEV add-on plan.

## Files

| File | Role |
|------|------|
| `embed.py` | Shared embedder (model2vec). Imported by **both** indexer and server. |
| `indexer.py` | **Build-time.** Scans `../modules` → `docs.db` (modules, docs, FTS5, vectors). |
| `server.py` | **Runtime.** Hybrid MCP server (stdio or HTTP) over `docs.db`. |
| `query_test.py` | Ad-hoc retrieval harness for eyeballing quality. |
| `requirements.txt` | Pinned runtime deps (`mcp`, `sqlite-vec`, `model2vec`, `numpy`). |

`docs.db` is a **build artifact** — never committed (see `.gitignore`); in production it is a
CI-built GitHub Release asset the add-on downloads.

## Tools

| Tool | What it does |
|------|--------------|
| `search_modules(query, category?, limit?)` | Hybrid search. Start here. |
| `get_module(machine_name, version?)` | data.json + start.md + usage.md + doc list. |
| `list_docs(machine_name, version?)` | Every doc unit for a module version. |
| `read_doc(machine_name, doc_path, version?)` | Read one doc unit. |
| `list_categories()` | Categories with module counts. |

## Local development

```bash
python3 -m venv .venv && . .venv/bin/activate
pip install -r requirements.txt

python indexer.py --corpus ../modules --out docs.db   # build (~30s)
python query_test.py docs.db                           # eyeball retrieval
python server.py                                        # stdio MCP
python server.py --http --host 127.0.0.1 --port 9130    # HTTP MCP at /mcp
```

Rebuild `docs.db` whenever the corpus changes. Env `DOCS_DB=/path/to/docs.db` overrides the
default location.

### Register with Claude Code (stdio, local)

```bash
claude mcp add agent-module-docs -- \
  /abs/path/mcp/.venv/bin/python /abs/path/mcp/server.py
```

(Uses the venv's Python so the deps resolve. `docs.db` must exist locally.)

## Deployment (DDEV add-on)

In production this runs as an HTTP service inside a DDEV container, and clients register a URL
(`https://<project>.ddev.site:<port>/mcp`). See [`DESIGN.md`](DESIGN.md) §7.

**Offline model — required in the container image.** `model2vec` fetches the model from
HuggingFace on first load. The Docker image must pre-bake it at build time and run offline:

```dockerfile
RUN python -c "from model2vec import StaticModel; StaticModel.from_pretrained('minishlab/potion-retrieval-32M')"
ENV HF_HUB_OFFLINE=1
```

## Security

- DB opened **read-only** (`mode=ro` + `PRAGMA query_only`).
- Bodies are served from the DB, so `read_doc` does no filesystem access — no path traversal
  surface at all.
- The model guard refuses to start if `docs.db` was built with a different embedding model.
- HTTP is published through the DDEV router (host-reachable, not public). Add a bearer token
  before exposing it beyond localhost.
