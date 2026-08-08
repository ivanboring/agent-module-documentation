<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity Logger — agent index

Attaches **log messages to specific entities** (per-entity activity log — e.g. "synced to CRM",
"import failed"). Depends on `dynamic_entity_reference`, `views`. Config at `entity_logger.settings`;
provides permissions. Version **1.0.12**. Core `^10.1||^11`.

Admin/logging — gate log viewing (entries may reveal internal process info); no entity-access change.
