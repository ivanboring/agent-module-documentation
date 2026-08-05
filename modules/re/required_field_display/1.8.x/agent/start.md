<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Required Field Display (required_field_display) — agent index

Marks required fields on the **Manage Fields** screen. No dependencies, no routes, no
permissions, no configuration. Core requirement `^8.8 || ^9 || ^10 || ^11`.

Key facts:
- Whole module: `required_field_display.module` (alters the Field UI table),
  `css/required_field_display_ui.css`, `required_field_display.libraries.yml`.
- **Administrative display only** — it changes nothing about the fields, so it is free to add and
  free to remove.
- Fills a genuine Field UI gap: the listing shows label, machine name and type, but not whether a
  field is required, which is among the first things a content-model audit needs.
- Most useful before a migration or form redesign, where "which fields are mandatory" determines
  what the source data must provide.
- `.info.yml` reports the legacy `version: '8.x-1.8'`.
