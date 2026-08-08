<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Node View Redirect redirects a node's view page to an existing path, per content type — for content types that should point elsewhere rather than render.

---

Some content types exist as data behind a canonical URL that should redirect somewhere else — a landing entry that points to a campaign page, a record that should open its related page. Node View Redirect sends a node's view route to a configured existing path, per content type. The redirect target is admin-configured, not request-derived, so it is not an open-redirect surface. Confirm the redirects match intent and do not create loops or send users away from content they should see.

---

- Redirect a node view to a path.
- Point a content type elsewhere.
- Redirect per content type.
- Send a node to a related page.
- Skip rendering a node.
- Configure the redirect target.
- Avoid redirect loops.
- Route content types.
- Confirm redirect intent.
- Keep the target admin-set.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.
- Pair with related modules.
- Keep setup minimal.
- Verify theme fit.
- Audit access.
- Match your use case.
- Confirm compatibility.