<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Lionbridge Translation Provider (project `lionbridge_translation_provider`) — agent index

TMGMT translator plugin for the **Lionbridge Content API**. Depends on `tmgmt`.
Core requirement `^10 || ^11`.

> **Project and module names differ.** The project is `lionbridge_translation_provider`; the module
> it ships is **`tmgmt_contentapi`**. `drush en lionbridge_translation_provider` fails — use
> `drush en tmgmt_contentapi`. Composer requires the project name.

Key facts:
- Configured through **TMGMT's own translator collection**, not a settings page of its own.
- **Vendor integration, not machine translation.** Jobs go to human translators under a
  commercial contract: an account, credentials and a per-word cost. Distinguish it clearly from
  `ai_tmgmt` (wave 64), which drives an LLM through the same TMGMT workflow — different price
  point, different quality profile, and they can coexist with different languages routed to each.
- **Content API credentials are secrets** — environment variable via `ddev dotenv set`, surfaced
  through a Key entity, not exported configuration.
- Requires `tmgmt` to be installed first; it is not pulled in automatically by the project's own
  info file in every install path.
