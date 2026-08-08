<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# SQLite VDB Provider — agent index

Enables **SQLite (sqlite-vec) as a vector database** for the AI module (lightweight local store for RAG/
semantic search — no separate service). Depends on `ai`. Config at `ai_vdb_provider_sqlite.settings_form`.
Version **1.4.0** (experimental). Core `^10.2||^11`.

Integration/AI-infra — stores embeddings from your content; ensure AI search **respects content access**. No
access role.
