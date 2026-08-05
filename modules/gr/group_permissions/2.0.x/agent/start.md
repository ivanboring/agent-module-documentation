<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Group permissions (group_permissions) — agent index

Per-group overrides of the permissions defined by a **group type**. Depends on `group`
(composer `^2.0 || ^3.0`). Core requirement `^10 || ^11`.
**Current release is 2.0.0-alpha12 — alpha.**

Key facts:
- Adds a `group_permission` content entity holding one group's override set. Editing form:
  `entity.group_permission.canonical` at **`/group/{group}/permissions`**.
- That route's requirements are worth reading carefully:

  ```yaml
  requirements:
    _group_permission: 'override group permissions'     # Group's in-group check, not a site permission
    _group_permissions_enabled: 'TRUE'                  # custom check in src/Access/
  ```

  So access is evaluated *inside the group*, and the form is hidden entirely where overriding
  has not been switched on for that group type.
- Site-wide permissions: **`override group permissions`** (`restrict access: TRUE` — correct;
  it is the power to grant rights) plus CRUD permissions on the
  `group_permission` entities themselves.
- Overrides are enforced beyond the permission check: `src/GroupPermissionsManager.php`,
  `GroupPermissionAccessControlHandler`, and a **`src/QueryAccess/`** namespace so entity
  queries and listings reflect the per-group set rather than only direct access calls.
- `GroupPermissionStorageSchema` and `GroupPermissionHtmlRouteProvider` customise storage and
  routing; check `group_permissions.install` before upgrading between alphas.
