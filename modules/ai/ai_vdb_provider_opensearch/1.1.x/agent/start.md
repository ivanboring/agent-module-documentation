<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# AI Vector DB: OpenSearch — agent index

An **OpenSearch vector-database backend for the AI (RAG/search) module**. Depends on `ai`, `ai_search`, `key`,
`search_api_opensearch`. Version **1.1.0-alpha2**. Core `^10.2||^11`.

AI/search — stores **embeddings in OpenSearch** (secure the cluster); **credentials via the Key module**; content
sent to the AI provider for embedding (egress); ensure indexed content respects access. No access role.
