<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Domain Permissions dynamically removes roles from users when using a non-edit domain.

---

Domain Permissions **removes users' roles when they are on a non-edit domain** — it overrides Drupal core's
`UserRolesAccessPolicy` so that, on any domain other than the designated "edit" domain (e.g. `edit.example.com`),
a user's granted roles are dynamically dropped, leaving them with only exempt roles (default `anonymous`,
`authenticated`). This confines authoring/administration to the edit domain while the public domain serves only
end-user access. It works on core 10.3–11.

Use it to segregate the editorial surface onto a separate domain. This is a **security-hardening** access feature:
it shrinks the attack surface of the public domain (a compromised editor session on the public host has no
privileged roles there). Understand its scope: it is **defense-in-depth built on Drupal's access-policy layer** and
relies on correct domain configuration and the `domain_perm_roles_exempt` setting — it does not replace core
permission/role management, and its effectiveness depends on the edit and public domains being genuinely separate
(and on trusted host resolution). Configure the edit domain and exempt roles.

---

- Strip roles on non-edit domains.
- Override core UserRolesAccessPolicy.
- Confine authoring to the edit domain.
- Leave only exempt roles (default anonymous/authenticated) publicly.
- Serve access hardening.
- Shrink the public domain's attack surface.
- BE defense-in-depth on the access-policy layer.
- Rely on correct domain config + domain_perm_roles_exempt.
- Not replace core permission/role management.
- Depend on genuinely separate edit/public domains (trusted host resolution).
- Configure the edit domain and exempt roles.
- Handle domain-based roles.
- Segregate editing.
- Configure the domains.
- Remove roles.
- Handle the policy.
- Gate by domain.
- Reduce attack surface.
- Set exempt roles.
- Provide domain-based role stripping.
