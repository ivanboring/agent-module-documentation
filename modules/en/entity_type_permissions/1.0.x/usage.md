<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity Type Permissions provides type-specific permissions for content entities, granting access to an entity type/bundle via a dedicated permission.

---

Entity Type Permissions provides per-type (per-bundle) permissions for content entities — generating
permissions for entity types/bundles and, via `hook_entity_access()`, granting access when the account
holds the corresponding permission. It uses `AccessResult::allowedIf($account->hasPermission(...))`, so it
**grants** access to holders of the configured permission and returns neutral otherwise. It depends on core
User and is configured at `entity_type_permissions.settings_form`; it provides its own permissions.

Use it to add granular per-entity-type access permissions where core's coarser permissions aren't enough.
Important semantics: because it uses `allowedIf` in `hook_entity_access`, it is an **additive grant** — it
grants access to permission-holders but does not *restrict* what other access checks already allow (that is
the correct, safe hook_entity_access pattern). So to actually restrict an entity type, ensure other access
(core permissions) doesn't already grant it; use this to open up access, not as the sole gate for locking
down. Verify the permission assignments match your intent.

---

- Add per-type entity permissions.
- Grant access per bundle.
- Generate type-specific permissions.
- Grant via hook_entity_access allowedIf.
- Return neutral without the permission.
- Depend on core User.
- Configure at the settings form.
- Provide its own permissions.
- Understand it is an additive grant.
- Not restrict what core already allows.
- Use to open up access, not lock down.
- Verify permission assignments.
- Add granular entity permissions.
- Grant to permission-holders.
- Combine with core access for restriction.
- Configure per-entity-type permissions.
- Handle content-entity access.
- Grant per bundle.
- Match permissions to intent.
- Provide type-specific access.
