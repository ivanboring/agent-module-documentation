<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# AI Search (ai_search) — agent index

Search API backend indexing content as **vector embeddings** for semantic search. Depends on the
**`ai`** module and `search_api (>=8.x-1.40)`. Core requirement `^10.4 || ^11`.

> **`lifecycle: experimental` in the info file, release `2.0.0-alpha2`.** Both matter for
> something in the search path — weigh them explicitly rather than treating this as production-ready.

Three things belong in any evaluation:
- **Cost.** Embedding is billed per item indexed *and* per query with a hosted provider. A large
  site's full reindex is a real invoice; estimate it before starting.
- **Data flow.** Content leaves the site to be embedded unless the provider is local (Ollama and
  similar through the `ai` module). For unpublished or sensitive content that is the deciding
  question.
- **Access control is the hard part.** A vector index returns nearest neighbours; ensuring
  restricted content does not surface depends on **Search API's access handling being applied and
  verified**, not on the backend. Test with a restricted item explicitly.

Also the retrieval half of **RAG** — this is what an on-site AI assistant needs to find relevant
passages, which is usually the real reason it appears in a requirements list.
