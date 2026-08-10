<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
AI VDB OpenSearch enables OpenSearch as an AI vector database.

---

AI Vector DB: OpenSearch provides an **OpenSearch vector-database backend for the AI module's search/RAG
features** — storing embeddings in OpenSearch for semantic/vector search over content. It depends on the AI, AI
Search, Key and Search API OpenSearch modules, in the AI Vector Database Providers (Experimental) package.

Use it as the vector store for AI search/RAG. It is an AI/search integration. Security/data handling: it stores
**content embeddings in OpenSearch** (external — secure the cluster), authenticates with **credentials via the
Key module** (secret), and content sent for embedding goes to the **AI provider** (egress). Ensure indexed content
respects access (a vector index isn't Drupal-access-governed by default). It has no access-control role. Configure
the OpenSearch connection and Key.

---

- Provide an OpenSearch vector backend.
- Store embeddings for AI search/RAG.
- Enable semantic/vector search.
- Depend on AI/AI Search/Key/Search API OpenSearch.
- Serve AI search.
- Index content embeddings.
- Store embeddings in OpenSearch (secure the cluster).
- Use credentials via the Key module (secret).
- Send content to the AI provider for embedding (egress).
- Ensure indexed content respects access (not Drupal-governed by default).
- Have no access-control role.
- Configure the OpenSearch connection and Key.
- Handle vector storage.
- Store vectors.
- Configure the backend.
- Index embeddings.
- Handle the integration.
- Search vectors.
- Secure the cluster + key.
- Provide an OpenSearch vector DB.
