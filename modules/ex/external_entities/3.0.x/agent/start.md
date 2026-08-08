<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# External Entities (external_entities) — agent index

Exposes **remote data (REST, SQL, other systems) as native-feeling Drupal entities** — no import.
Version **3.0.0-rc2**. Core `^10 || ^11`.
Submodules: `xnttsql` (SQL source), `xntt_views`, `xntt_file_field`, `external_entities_pathauto`,
`external_entities_drupalorg`, `xntt_example_d7import`. Perms: `administer external entity types`.

Define an external entity type, map fields to the source, and the records behave like entities
(Views, view modes, references) while staying in the source of truth. For live remote data without a
sync pipeline.