<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# AI Content Migrate — agent index

**AI-driven migration** of legacy HTML into Drupal nodes/media. Version **1.0.0**. Core `^10.3||^11`.

Importer fetches remote URLs + downloads media server-side (SSRF-relevant; also resolves `file://`) — run only against trusted sources. Gated by `administer ai content migrate`. Depends on core `node`/`media`, `ai_agents`.