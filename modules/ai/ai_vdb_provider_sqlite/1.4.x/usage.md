<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
SQLite VDB Provider enables the use of a SQLite (sqlite-vec) VDB in the Drupal AI module.

---

SQLite VDB Provider lets the Drupal AI module use SQLite (via sqlite-vec) as its vector database — storing
and querying embeddings in a lightweight local SQLite store for AI features like RAG and semantic search,
without a separate vector-database service. It depends on the AI module, is configured at
`ai_vdb_provider_sqlite.settings_form`, in the (experimental) AI Vector Database Providers package.

Use it for a lightweight local vector store for AI. It is an integration/AI-infrastructure feature; it stores
embeddings derived from your content, and — as with any AI search — ensure the search built on it **respects
content access** (don't surface restricted content via semantic search). It is experimental. It has no
access-control role. Configure the SQLite vector store.

---

- Use SQLite (sqlite-vec) as a VDB.
- Store/query embeddings in SQLite.
- Support RAG and semantic search.
- Depend on the AI module.
- Use a lightweight local vector store.
- Avoid a separate vector service.
- Ensure AI search respects content access.
- Not surface restricted content.
- Have no access-control role.
- Configure at the settings form.
- Store embeddings locally.
- Handle vectors in SQLite.
- Configure the VDB.
- Support semantic search.
- Note it is experimental.
- Query vectors.
- Configure the store.
- Handle AI embeddings.
- Store AI vectors.
- Configure vectors.
