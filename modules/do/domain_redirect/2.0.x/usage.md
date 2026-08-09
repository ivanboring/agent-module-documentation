<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Domain Redirect makes redirects domain-aware, allowing the same source path to redirect per domain.

---

Domain Redirect makes the **Redirect module domain-aware** — so the same source path can redirect to
different destinations depending on the active domain (Domain module), and duplicate-hash constraints are
relaxed per domain. It depends on the Domain and Redirect modules, in the Domain package.

Use it for per-domain redirects on multi-domain sites. It is a site-structure/URL feature; redirects are
**admin-configured** (as in the Redirect module — the destinations are trusted admin input, not user-supplied,
so this is not an open-redirect surface), and it has no access-control role. Configure the per-domain
redirects.

---

- Make redirects domain-aware.
- Redirect a path differently per domain.
- Relax duplicate-hash per domain.
- Depend on Domain and Redirect.
- Serve multi-domain sites.
- Use admin-configured redirects.
- Not be an open-redirect surface (admin input).
- Have no access-control role.
- Configure per-domain redirects.
- Handle domain redirects.
- Redirect per domain.
- Configure the redirects.
- Add domain redirects.
- Handle the redirects.
- Redirect by domain.
- Configure domains.
- Handle redirection.
- Set domain redirects.
- Configure paths.
- Provide domain-aware redirects.
