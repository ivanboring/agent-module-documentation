<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# AI Search Block (ai_search_block) — agent index

Block for **AI-powered search**. Version **1.0.0-rc24**. Submodules `ai_search_block_extras`,
`_header`, `_log`, `_log_tag`.

**Creds/governance:** AI provider key (keep out of config); queries + searched content go to the
provider. **Privacy:** the log submodules record **search queries** (potentially sensitive) — restrict
the log, set retention.