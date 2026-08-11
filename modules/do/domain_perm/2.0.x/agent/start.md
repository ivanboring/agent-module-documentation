<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Domain Permissions — agent index

**Dynamically strips users' roles on a non-edit domain** (overrides core `UserRolesAccessPolicy`), confining
authoring/admin to a designated edit domain. Version **2.0.0**. Core `>=10.3 <12`.

**Security-hardening** access feature (shrinks the public domain's attack surface). Defense-in-depth on the
access-policy layer — relies on correct domain config + `domain_perm_roles_exempt` (default anonymous/
authenticated) + genuinely separate domains; does not replace core permissions.
