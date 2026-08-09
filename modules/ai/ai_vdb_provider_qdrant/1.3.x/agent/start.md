<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Qdrant VDB Provider — agent index

Enables **Qdrant as a vector-database provider** for the AI module (RAG/semantic search — store/query vectors
in Qdrant). Depends on `ai`, `ai_search`, `key`. Version **1.3.3**. Core `^10.2||^11`.

AI/integration — talks to Qdrant with an **API key via the Key module** (store as a Key/secret, HTTPS); indexed
embeddings **sent to Qdrant** (self-host to keep in-house). No access role.
