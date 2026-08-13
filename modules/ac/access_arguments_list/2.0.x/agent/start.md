<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Access Arguments List (access_arguments_list) — agent index

**Adds a "Machine name: `<permission>`" line to every row of the core permissions admin table.**

- **Version:** 2.0.x
- **Core:** ^9.3 || ^10 || ^11
- **Dependencies:** `user` (core)
- **Mechanism:** `hook_form_user_admin_permissions_alter()` in the `.module` file rewrites each row's `description` context and attaches the `access_arguments_list/permissions_form` CSS library.
- **Routes/permissions/services:** none of its own; it only alters the existing `/admin/people/permissions` form (core `administer permissions`).
- **Config:** none.

**Security:** No routes, permissions, services, endpoints or writes of its own; a pure form-alter display change gated entirely by core's `administer permissions`. No security-relevant surface.
