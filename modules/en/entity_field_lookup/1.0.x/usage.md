<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity Field Lookup is a Migrate process plugin that finds an existing entity by querying a field, rather than by id or by a migration map.

---

Resolving references is the hard part of most migrations. Core's `migration_lookup` finds an entity by the id another migration created, which works when both sides are migrations you control and fails otherwise — and "otherwise" is common. Content is being imported against terms a site builder created by hand. A spreadsheet identifies people by email address. A feed names categories by label. A second import has to attach to entities the first one made but whose ids nobody recorded. In each case the source names the target by **something other than its id**, and the migration needs to look it up by that. This plugin does exactly that: query a field for a value, return the entity. Version **1.0.7** on core `^10.1 || ^11`, in the Migrate package. Three things decide whether the lookups are reliable, and they are the ones that produce quietly wrong data rather than errors. **The field being queried must be unique in practice** — two people with the same surname, two terms with the same name in different vocabularies, two products sharing a code — and a lookup returning the first match silently attaches content to the wrong entity, which is far worse than failing. **A miss needs a defined outcome**: skipping the row, creating a stub, or failing the migration are all defensible, and the wrong one for the case produces either silent gaps or a vocabulary full of stubs nobody meant to create. And **a query per row is a query per row**, so on a large migration the lookup is often the slowest part — worth measuring, and worth an index on the field being queried.

---

- Look up a term by name during a migration.
- Find a user by email address.
- Resolve a reference by an external code.
- Attach content to hand-created terms.
- Look up a product by SKU.
- Resolve a category by label.
- Find an entity without a migration map.
- Import against existing content.
- Resolve references in a second import.
- Look up a node by a legacy identifier.
- Attach media by filename.
- Resolve an organisation by registration number.
- Find a taxonomy term by a source value.
- Import a feed naming categories by label.
- Resolve a location by postcode.
- Attach a reference by a business key.
- Look up an author by name.
- Resolve a reference from a spreadsheet.
