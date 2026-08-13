<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity Usage Validate (entity_usage_validate) — agent index

**Adds a warning message when a published node references media that is still unpublished.**

- **Version:** 1.0.x (1.0.0-alpha5)
- **Core:** ^8.9 || ^9 || ^10 || ^11
- **Dependency:** entity_usage
- **How:** `hook_entity_update()` (reordered after entity_usage via `hook_module_implements_alter`) → for published nodes, `entity_usage.usage::listTargets()` → load media → `messenger` warning per unpublished item.
- **Config / routes / permissions:** none.

**Security:** advisory hook only — no routes, no mutation, no anonymous surface; the warning (media label+ID) is shown to the editor already editing the node. No access-check leak.
