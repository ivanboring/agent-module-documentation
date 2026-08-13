<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity Inherit (entity_inherit) — agent index

**Entities inherit field values from a configured 'parent' entity; parent edits propagate to children (and new parents fill empty child fields) on every save.**

- **Version:** 5.0.x — `php: 8.x`
- **Core:** ^10 || ^11
- **Configure route:** `entity_inherit.admin_settings_form` → `/admin/config/entity_inherit` (permission `access administration pages`)
- **Service:** `entity_inherit` (`EntityInherit`); plugin manager `plugin.manager.entity_inherit` (`EntityInheritPlugin` type).
- **Trigger:** `hook_entity_presave()` → `EntityInherit::hookPresave()`; propagation via `EntityInheritQueue` batch/no-batch processors; anti-infinite-loop utility per save.
- **Security — cross-entity write, NO access checks (by design, documented):** propagation in the presave path writes to related child/parent entities **regardless of the current user's edit/view access** (README "Note about permissions"). A user who can edit a parent can change children they cannot edit; adding a parent ref pulls in parent content they may not be allowed to view. Mitigate by restricting which fields are parent fields and who can edit parent entities. Admin route uses the low `access administration pages` permission.

See [configure/inheritance.md](configure/inheritance.md).