<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Simple Entity Merge (simple_entity_merge) — agent index

Repoints references from one entity to another and removes the duplicate.
Core requirement `^10 || ^11`. Settings at `admin/config/content/simple_entity_merge`.

Both permissions are **`restrict access: TRUE`**:
- `administer simple_entity_merge` — configure which entity types are mergeable;
- `execute simple_entity_merge` — perform a merge.

Correct: a merge is a **bulk, destructive rewrite of references** across the site.

Key facts:
- **A merge is not undoable.** Take a backup first, and rehearse on a copy for a large vocabulary.
- **Check reference coverage before relying on it.** A reference-based merge finds entity
  reference fields. It will not find references held in:
  - text fields (an inline link or embedded entity),
  - **Layout Builder** section configuration,
  - serialised settings or another module's own tables.
  Those keep pointing at the deleted entity.
- Surface: `src/SimpleEntityMerge.php`, `src/Routing/`, `src/Form/`, `config/install`,
  `config/schema`, `.services.yml`.
