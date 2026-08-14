<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity Cache Rebuild (entity_cache_rebuild) — agent index

**Adds a permission-gated 'Cache rebuild' local task to every content entity type with a canonical link, invalidating that entity's cache tags.**

- **Version:** 1.0.x (from `1.0.1`)
- **Core:** ^8 || ^9 || ^10 || ^11
- **Routes:** dynamically generated `entity.<type>.cache_rebuild` at `<canonical>/cache-rebuild` (`Routing\CacheRebuild::routes`).
- **Permission:** `rebuild cache for all content entity types` (gates every generated route + local task).
- **Controller:** triggers page-cache kill switch, invalidates `$entity->getCacheTags()`, fires `hook_entity_cache_rebuild` alter, redirects to canonical.
- **Security:** all cache-rebuild routes permission-gated; action is a state-changing GET without a CSRF token but requires the dedicated permission — grant only to trusted roles.
