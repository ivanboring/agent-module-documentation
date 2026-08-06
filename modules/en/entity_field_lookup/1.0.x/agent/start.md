<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity Field Lookup (entity_field_lookup) — agent index

Migrate **process plugin** finding an entity by **querying a field**, rather than by id or a
migration map. Package `Migrate`. Version **1.0.7**. Core requirement `^10.1 || ^11`.

**Why core's `migration_lookup` is not enough:** it finds an entity by the id **another migration**
created — which works when you control both sides and fails otherwise. "Otherwise" is common:
importing against terms a site builder made by hand; a spreadsheet identifying people by **email
address**; a feed naming categories by **label**; a second import attaching to entities whose ids
nobody recorded. The source names the target by **something other than its id**.

**Three things decide reliability — and they produce quietly wrong data rather than errors:**
1. **The queried field must be unique in practice.** Two people with the same surname, two terms
   with the same name in different vocabularies, two products sharing a code — **a lookup returning
   the first match silently attaches content to the wrong entity**, far worse than failing.
2. **A miss needs a defined outcome** — skip the row, create a stub, or fail the migration. All are
   defensible; the wrong one yields **silent gaps** or **a vocabulary full of unintended stubs**.
3. **A query per row is a query per row.** On a large migration this is often the slowest part —
   measure it, and **index the field being queried**.
