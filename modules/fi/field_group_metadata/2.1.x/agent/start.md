<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Field Group Metadata (field_group_metadata) — agent index

Moves a designated **field group** into the node form's right-hand sidebar, alongside core's
authoring-information tabs. Depends on `field_group ~3.0 || ~4.0`.
Core requirement `^8 || ^9 || ^10 || ^11`.

Key facts:
- Whole module: `src/FieldGroupMetadataPreRenderer.php` + `field_group_metadata.module`. No
  routes, permissions or configuration of its own.
- **Presentational only** — it relocates a group at pre-render time. Field storage, validation
  and access are untouched, so it is free to add or remove.
- Which group is treated as metadata is set in the **field group's own settings**, so the choice
  travels with the form display in `drush cex`.
- `composer.json` sets `"minimum-stability": "dev"` — relevant when resolving versions in a
  strict project.
