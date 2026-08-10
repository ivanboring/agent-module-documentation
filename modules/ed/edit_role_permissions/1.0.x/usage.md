<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Edit Role Permissions changes the default entity operation on roles to "edit permissions".

---

Edit Role Permissions **changes the default operation link on a role** from "edit" to "edit permissions" —
so the primary action on the roles admin list jumps straight to that role's permissions page instead of the role
edit form, a small admin-UX convenience. It depends on core User, in the Other package.

Use it to speed up permission editing. It is an administration-UX feature and it is **access-neutral**: it only
alters an operation link via `hook_entity_operation_alter()`; the linked permissions page is still governed by
core's own **`administer permissions`** access, so this grants no new capability. It has no access-control role.
Enable it to change the role operation.

---

- Relabel the role 'edit' operation.
- Link to the permissions page.
- Speed up permission editing.
- Depend on core User.
- Use hook_entity_operation_alter.
- Serve admin UX.
- Add NO new access (access-neutral).
- Rely on core's 'administer permissions'.
- Have no access-control role.
- Enable it to change the link.
- Handle the operation link.
- Change the operation.
- Configure nothing.
- Handle the roles list.
- Alter the link.
- Configure roles.
- Handle the UX.
- Relabel operations.
- Enable the module.
- Provide the edit-permissions link.
