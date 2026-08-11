<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
AI Knowledge Connector indexes entities into vector stores via embedding providers.

---

AI Knowledge Connector connects Drupal entities with embedding providers and vector stores — indexing entity content as embeddings for AI retrieval (RAG), managing vector stores and providers, so AI features can search and ground answers in the site's knowledge.

Indexing sends content to embedding providers (cost + data egress); credentials should be secure (env-backed). Permissions cover administration, indexing status, reindex, vector-store management, and provider management — restrict to trusted roles. Depends on core `system`; requires Drupal 11.

---

- Index entities as embeddings.
- Connect embedding providers.
- Manage vector stores.
- Support AI retrieval (RAG).
- Ground AI answers in content.
- Send content to embedding providers (cost/egress).
- Gate admin with `administer ai knowledge connector`.
- Gate indexing status/reindex.
- Gate `manage vector stores`/`manage ai providers`.
- Restrict to trusted roles.
- Depend on core `system`.
- Require Drupal 11.
- Keep credentials secure.
- Configure vector stores
- Support semantic search
- Reindex knowledge
- Manage providers
- Index knowledge
