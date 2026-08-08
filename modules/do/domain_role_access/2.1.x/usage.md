<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Domain Role Access provides per-role domain access, extending Domain Access so roles can grant domain access.

---

Domain Role Access adds per-role domain access to the Domain / Domain Access framework — so a user's
access to a domain (and its domain-assigned content) can be granted by their **role**, not only by explicit
per-user domain assignment. It depends on the Domain and Domain Config modules.

Use it to grant domain access by role on multi-domain sites. This is implemented on the correct foundation:
it **decorates** Domain Access's `DomainAccessManager::getAccessValues()` to include role-derived domains, so
the role-based domain access flows through **Domain Access's existing enforcement** — which uses the
node-grants system (query-level) to filter domain-restricted content. So it extends, rather than bypasses,
Domain Access's access model. When adopting: configure the role→domain mapping to match your intent (a role
mapped to a domain grants all its members that domain's access), and remember the enforcement is only as
correct as Domain Access's configuration. Configure the per-role domain access.

---

- Grant domain access by role.
- Provide per-role domain access.
- Extend Domain Access with roles.
- Depend on Domain and Domain Config.
- Decorate DomainAccessManager::getAccessValues().
- Flow through Domain Access's enforcement.
- Use node-grants (query-level) via Domain Access.
- Not bypass Domain Access's model.
- Configure the role->domain mapping.
- Match the mapping to intent.
- Rely on Domain Access configuration.
- Grant members a domain via their role.
- Configure per-role domain access.
- Handle role-based domains.
- Map roles to domains.
- Restrict by domain+role.
- Handle domain access.
- Configure domains by role.
- Grant role domain access.
- Extend domain access.
