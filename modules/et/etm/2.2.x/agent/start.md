<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Enhanced Taxonomy Manager (etm) — agent index

Machine name is **`enhanced_taxonomy_manager`**, project is **`etm`** — the info file, routes and
permissions all use the long form. Version **2.2.1**. Core `^10 || ^11`. Depends on core `taxonomy`.

Replaces core's term overview with a lazy-loading drag-and-drop tree at
`/admin/structure/taxonomy/{vocabulary}/tree`, plus a dashboard at
`/admin/structure/taxonomy/etm-dashboard`. Settings:
`/admin/config/content/enhanced-taxonomy-manager`.

~40 routes, nearly all AJAX: rename, merge, clone, find-replace (+preview), orphan repair,
duplicate detection, usage counts, stats, health check, CSV export, bulk import, snapshots,
undo.

**Access control is well built — cite it as a good example.** 35 routes use
`_etm_access: 'TRUE'` → `EtmAccessCheck::access()`:

- `administer taxonomy` → allowed globally;
- otherwise per-vocabulary `etm manage terms in {vid}`;
- term-scoped routes carry no vocabulary param, so the vocabulary is **derived from the term's
  bundle** — the source comments that without this the per-vocabulary permission granted the tree
  page and nothing else;
- `cachePerPermissions()` + `addCacheableDependency()` on every branch.

Separate `exportAccess`/`importAccess` honour `etm export terms in {vid}` / `etm import terms in
{vid}`. Delete defers to core `_entity_access: 'taxonomy_term.delete'`.

Submodule **`etm_ai`**: term generation, placement suggestions, semantic duplicate detection,
auto-describe, health analysis, natural-language search. Separate enable.