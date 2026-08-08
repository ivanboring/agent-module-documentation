<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Azure AI Search VDB Provider — agent index

Enables **Azure AI Search as a vector-database provider** for the AI module (RAG/semantic search — store/query
vectors in Azure). Depends on `ai`, `ai_search`, `key`, `search_api`. Version **1.1.0-beta2**. Core
`^10.2||^11`.

AI/integration — talks to Azure with an **API key via the Key module** (store as a Key/secret, HTTPS
endpoint); indexed embeddings/content are **sent to Azure** (data egress — confirm acceptable). No access
role.
