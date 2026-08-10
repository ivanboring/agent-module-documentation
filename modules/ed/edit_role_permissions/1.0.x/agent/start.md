<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Edit Role Permissions — agent index

Changes a role's **default operation link from "edit" to "edit permissions"** (jump to the role's permissions
page). Depends on core `user`. Version **1.0.x** (dev). Core `^8||^9||^10||^11`.

Admin-UX — **access-neutral**: only alters an operation link via `hook_entity_operation_alter`; the permissions
page stays gated by core's `administer permissions`. No access role.
