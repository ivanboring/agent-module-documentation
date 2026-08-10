<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# AI Vector DB: Elasticsearch — agent index

An **Elasticsearch vector-database backend for the AI (RAG/search) module**. Depends on `ai`, `ai_search`, `key`,
`search_api`. Version **1.0.0-rc1**. Core `^10.3||^11`.

AI/search — stores **embeddings in Elasticsearch** (secure the cluster); **credentials via the Key module**;
content sent to the AI provider for embedding (egress); ensure indexed content respects access (vector index not
Drupal-governed by default). No access role.
