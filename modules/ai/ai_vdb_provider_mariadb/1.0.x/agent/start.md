<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# MariaDB VDB Provider — agent index

Enables **MariaDB Vector as a vector database (VDB)** for the AI module (store/query embeddings in MariaDB —
RAG/semantic search, no separate vector service). Depends on `ai`; Drush commands. Version **1.0.1**. Core
`^10.2||^11||^12`.

Integration/AI-infra — stores embeddings (derived from your content); ensure AI search built on it **respects
content access** (don't surface restricted content). No access role.
