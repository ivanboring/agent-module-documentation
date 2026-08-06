<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Bulk Copy Fields provides an action that copies values from one field to another across selected entities.

---

The need arrives with a content-model change, which is to say constantly on a long-lived site. A plain text field becomes a rich text one. A single-value field becomes multi-value. Two fields are consolidated. A field is renamed, which in Drupal means creating a new one and moving the data because fields cannot be renamed. A taxonomy reference replaces a free-text field. In each case the schema change is the easy part and moving the existing content is the work, and the alternatives are a migration — correct, and disproportionate for one field — or a `drush php:script` loop written once and thrown away, which nobody reviews. An action usable from a Views bulk operation puts it in the interface, scoped to whatever the view selects. Version **8.x-1.0-alpha6** — an **alpha** — on `^8` through `^11`, depending on core `action`. Three cautions, because this writes to content in bulk. **Field types must be compatible**, and the interesting failures are the partial ones: a rich text field copied into a plain one loses markup silently, and a multi-value field copied into a single-value one keeps the first delta and discards the rest without saying so. **Run it on a copy first**, because there is no undo and the previous values are gone unless revisions were being kept. And **saving entities in bulk fires everything that hooks entity save** — search reindexing, cache invalidation, workflow transitions, outbound webhooks — so a copy across ten thousand nodes is a much larger operation than it looks.

---

- Move data after renaming a field.
- Copy a plain text field into a rich text one.
- Consolidate two fields into one.
- Migrate values during a model change.
- Copy a value into a new field.
- Move data before deleting a field.
- Populate a new field from an old one.
- Copy a summary into a teaser field.
- Move a date into a range field.
- Copy values across selected nodes.
- Support a content model refactor.
- Backfill a newly added field.
- Copy a title into a display field.
- Move data between paragraph fields.
- Populate a field for a subset of content.
- Support a phased field migration.
- Copy values from a filtered view.
- Move legacy field data forward.
