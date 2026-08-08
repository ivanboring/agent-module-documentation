<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity Usage Addons (entity_usage_addons) — agent index

Two field formatters over **Entity Usage**'s tracking data: a list of referencing entities, and a
count. Version **2.0.2**. Core `^10 || ^11`. Depends on `entity_usage`.

No routes, no permissions, no config page — three classes:
`src/Service/Usage.php`, `EntityUsageAddonsFormatter`, `EntityUsageAddonsFormatterCount`.

Place via **Manage display** on any entity type Entity Usage tracks.

**Caveat to state:** it renders only what `entity_usage` recorded. An unsupported field type or an
untracked reference shows as *no usage* with no indication that tracking was incomplete — so an
empty list is **not** evidence the entity is unused. Configure what gets tracked in Entity Usage
itself.

README is literally `# todo`; the source is the documentation.