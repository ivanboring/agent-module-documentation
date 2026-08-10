<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# AI Related Content — agent index

A **Views block that surfaces related content via AI Search** (semantic similarity vs shared tags). Depends on
core `views`, `block`, `search_api`, `ai_search`. Provides permissions. Version **1.0.4**. Core `^10||^11`.

AI/search — content embedded/queried via the AI provider (data egress if cloud; credentials as secrets);
results follow the **Search API index access** (ensure it respects content access). No access role beyond
permission.
