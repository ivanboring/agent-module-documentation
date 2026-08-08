<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Me Redirect redirects /me and /me/* paths to the current user's /user/UID and /user/UID/* pages, giving a stable self-URL.

---

Linking to 'your account' needs the current user's ID, which templates and links do not always have. Me Redirect provides stable /me paths that redirect to the logged-in user's own /user/UID pages — /me → /user/123, /me/edit → /user/123/edit. It is a convenience/routing feature. The redirect is to the current user's own pages (derived server-side from the session, not from request input), so it is not an open-redirect and does not enable accessing another user's pages — /me always means the authenticated user. For anonymous users /me has no target (they are redirected to login as normal). A clean self-URL helper with no unusual security surface.

---

- Provide a /me self-URL.
- Redirect /me to the current user.
- Link to 'your account' stably.
- Use /me/edit for self-edit.
- Give a stable self-link.
- Derive the user from session.
- Avoid needing the UID in links.
- Redirect /me/* to /user/UID/*.
- Handle anonymous /me.
- Simplify account links.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.
- Pair with related modules.
- Verify theme fit.
- Match your use case.
- Confirm compatibility.
- Use deliberately.
- Review after upgrades.