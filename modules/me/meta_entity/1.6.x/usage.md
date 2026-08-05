<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Meta Entity stores metadata *about* an entity outside that entity's own storage — a sidecar record attached by dynamic entity reference, so data can be kept against a node without adding a field to the node.

---

Adding a field is the obvious way to attach data to an entity, and it is wrong in several recurring cases: the data changes far more often than the entity and would create a revision every time; it is operational rather than editorial and should not appear on the edit form; it applies to entity types you do not control; or it is written by a background process and shouldn't touch the entity's `changed` timestamp. This module provides the sidecar: meta entity types defined in configuration, each instance pointing at any entity through **`dynamic_entity_reference`** — which is what lets one meta entity type serve nodes, users, media and anything else without a field per target type. `src/` carries the entity, permission provider and admin surface, with the type admin at `/admin/structure/meta-entity` behind `administer meta entity` (`restrict access: true`) and per-type permissions generated at runtime by `MetaEntityPermissionProvider::getPermissions()`. Core requirement is `^10 || ^11`. The trade-off to state: because the data is not on the entity, it is not in the entity's revisions, not in its default rendering, and not automatically in its search index — everything that reads it must know to look.

---

- Store operational data against a node without a field.
- Keep metadata out of an entity's revisions.
- Attach data to entity types you do not control.
- Record background-process output separately.
- Avoid touching an entity's changed timestamp.
- Attach the same metadata type to several entity types.
- Store per-entity counters or scores.
- Keep internal notes off the edit form.
- Record sync state against content.
- Attach review dates without a field.
- Store data written by an integration.
- Keep frequently changing data out of revisions.
- Model metadata as its own entity type.
- Grant permissions per meta entity type.
- Attach data to users and nodes alike.
- Keep an entity's form uncluttered.
- Record processing status per item.
- Store data with a different lifecycle.
