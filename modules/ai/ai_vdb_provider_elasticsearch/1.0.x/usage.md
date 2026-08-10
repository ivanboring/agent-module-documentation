<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
AI VDB Elasticsearch provides an Elasticsearch backend for AI vector search.

---

AI Vector DB: Elasticsearch provides an **Elasticsearch vector-database backend for the AI module's search/
RAG features** — storing embeddings in Elasticsearch so AI features can do semantic/vector search over content.
It depends on the AI, AI Search, Key and Search API modules, in the AI Vector Database Providers (Experimental)
package.

Use it as the vector store for AI search/RAG. It is an AI/search integration. Security/data handling: it stores
**content embeddings in Elasticsearch** (external — secure the ES cluster), authenticates with **credentials via
the Key module** (secret), and content sent for embedding goes to the **AI provider** (egress). Ensure indexed
content respects access (a vector index isn't Drupal-access-governed by default — restrict what's indexed/
returned). It has no access-control role. Configure the Elasticsearch connection and Key.

---

- Provide an Elasticsearch vector backend.
- Store embeddings for AI search/RAG.
- Enable semantic/vector search.
- Depend on AI/AI Search/Key/Search API.
- Serve AI search.
- Index content embeddings.
- Store embeddings in Elasticsearch (secure the cluster).
- Use credentials via the Key module (secret).
- Send content to the AI provider for embedding (egress).
- Ensure indexed content respects access (not Drupal-governed by default).
- Have no access-control role.
- Configure the ES connection and Key.
- Handle vector storage.
- Store vectors.
- Configure the backend.
- Index embeddings.
- Handle the integration.
- Search vectors.
- Secure the cluster + key.
- Provide an Elasticsearch vector DB.
