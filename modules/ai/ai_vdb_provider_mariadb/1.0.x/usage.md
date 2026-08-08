<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
MariaDB VDB Provider enables the use of MariaDB Vector as a vector database in the Drupal AI module.

---

MariaDB VDB Provider lets the Drupal AI module use MariaDB Vector as its vector database (VDB) — storing
and querying embeddings in MariaDB for AI features like retrieval-augmented generation (RAG) and semantic
search, without a separate vector-database service. It depends on the AI module, provides Drush commands, in
the AI Vector Database Providers package.

Use it to keep AI embeddings in MariaDB. It is an integration/AI-infrastructure feature; it stores/queries
vector data (embeddings derived from your content) and has no access-control role. Note that indexed
embeddings represent your content, so ensure any AI search built on it respects content access (don't surface
restricted content via semantic search). Configure the MariaDB vector store.

---

- Use MariaDB Vector as a VDB.
- Store/query embeddings in MariaDB.
- Support RAG and semantic search.
- Depend on the AI module.
- Provide Drush commands.
- Avoid a separate vector service.
- Ensure AI search respects content access.
- Not surface restricted content via search.
- Have no access-control role.
- Configure the MariaDB vector store.
- Store embeddings.
- Query vectors.
- Handle AI embeddings.
- Configure the VDB.
- Support semantic search.
- Keep vectors in MariaDB.
- Handle vector storage.
- Configure vectors.
- Provide a VDB.
- Store AI vectors.
