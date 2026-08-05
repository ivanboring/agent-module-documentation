<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Simple Entity Merge repoints every reference from one entity to another and removes the duplicate — the fix for a taxonomy that has accumulated "Health", "health" and "Heath" as three separate terms.

---

Duplicates are inevitable wherever entities are created freely: taxonomy terms typed by different editors, organisations imported twice from different sources, people entered with and without a middle initial. Deleting the duplicate is not enough, because everything referencing it breaks; the work is finding every reference and repointing it, which is why this is usually done with a hand-written script and some anxiety. This module makes it an operation: `SimpleEntityMerge` performs the merge, `src/Routing` adds the entry points, and configuration at `admin/config/content/simple_entity_merge` chooses which entity types it applies to. Both permissions are marked **`restrict access: TRUE`** — `administer simple_entity_merge` and `execute simple_entity_merge` — which is right, because merging is a bulk, destructive rewrite of references across the site. That is also the operational advice: **a merge is not undoable**, so take a backup, and check that the module covers the reference types a site actually uses — plain entity reference fields are straightforward, but references held in text fields, in Layout Builder configuration, in serialised settings or in another module's tables will not be found by a reference-based merge.

---

- Merge duplicate taxonomy terms.
- Repoint references from one entity to another.
- Clean up after a double import.
- Consolidate two organisation records.
- Remove a duplicate without breaking references.
- Tidy a vocabulary accumulated over years.
- Merge two author profiles.
- Fix inconsistent tagging.
- Consolidate entities after a migration.
- Reduce duplicate options in a reference field.
- Merge entities as a permitted operation.
- Restrict merging to trusted roles.
- Improve faceted search by removing duplicates.
- Consolidate location records.
- Merge terms created by different editors.
- Clean reference data before a report.
- Reduce noise in a taxonomy.
- Standardise entity naming.
