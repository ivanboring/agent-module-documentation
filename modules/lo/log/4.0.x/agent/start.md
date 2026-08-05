<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Log (log) — agent index

A **log entity type** for real-world record keeping — not PHP/watchdog logging. Depends on
`entity`, `state_machine`, `token` and core `system`, `user`, `views`.

> **`core_version_requirement: ^11.3`** — this release supports a recent Drupal 11 minor only.
> No Drupal 10 support at all.

Key facts:
- **Not watchdog.** If someone wants error logging, they want `dblog`, `extended_logger` or
  `watchdog_mailer` (waves 63 and 60). This models *events in the world*: inspections,
  deliveries, treatments, activities.
- Bundles ("log types") are configuration; entities carry revisions and a **`state_machine`**
  workflow state, so a record can move planned → done.
- **Access is done properly:**
  - `log.autocomplete.name` → `_entity_create_access: 'log:{log_bundle}'`
  - `log.log_clone_action_form` → `_entity_create_any_access: 'log'`

  Scoped entity checks rather than flat permissions. Permission set includes
  `access log collection`, `administer log types` (`restrict access: true`) and
  `view all log revisions`.
- Comes from the **farmOS** ecosystem (where it models farm activities) but has no
  agriculture-specific dependencies.
