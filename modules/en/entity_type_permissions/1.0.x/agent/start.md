<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity Type Permissions — agent index

Provides **type-specific (per-bundle) permissions for content entities** — grants access via
`hook_entity_access()` `allowedIf(hasPermission)`. Depends on core `user`. Config at
`entity_type_permissions.settings_form`; provides permissions. Version **1.0.3**. Core `^8||^9||^10||^11`.

**Additive grant** (allowedIf) — grants to permission-holders, does NOT restrict what core already allows
(correct hook_entity_access pattern). Use to open access; for restriction ensure core doesn't already
grant. Verify assignments.
