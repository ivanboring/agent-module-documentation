<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Meta Entity (meta_entity) — agent index

Sidecar metadata entities attached to any entity via **`dynamic_entity_reference`**
(`^2 || ^3 || ^4`). Core requirement `^10 || ^11`.
Type admin at `/admin/structure/meta-entity`, permission **`administer meta entity`**
(`restrict access: true`).

Key facts:
- **Permissions are generated at runtime** by `MetaEntityPermissionProvider::getPermissions()`
  via a `permission_callbacks:` entry — per meta entity type. Read the class, not the YAML.
- `dynamic_entity_reference` is what makes one meta entity type able to target nodes, users,
  media and anything else without a field per target type.
- **When a field is the wrong tool** — the cases this exists for:
  - the data changes far more often than the entity and would create a revision each time;
  - it is operational, not editorial, and should not be on the edit form;
  - the target entity type belongs to another module;
  - it is written by a background process that must not touch `changed`.
- **The trade-off to state plainly:** data held here is **not** in the entity's revisions, **not**
  in its default rendering, and **not** automatically in its search index. Everything that needs
  it must know to look — including Views, which needs the relationship added explicitly.
