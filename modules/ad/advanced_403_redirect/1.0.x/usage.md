<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Advanced 403 Redirect redirects access denied responses.

---

Advanced 403 Redirect **redirects access-denied (403) responses to a configured destination** — so instead
of the default 403 page, users hitting a forbidden page are sent to a chosen page (e.g. login or a custom
message), with rules. It provides its own permissions, in the other package.

Use it to customize 403 handling. It is a site-structure/UX feature and it controls **where a 403 sends the
user**, not who gets a 403 — the destination is **admin-configured** (not user-controlled), so it doesn't
introduce an open-redirect. It has no access-control role beyond its permission (it changes the response to a
denial, not the denial itself). Configure the 403 redirect rules.

---

- Redirect 403 responses.
- Send forbidden users to a chosen page.
- Replace the default 403 page.
- Provide its own permissions.
- Serve site structure/UX.
- Apply redirect rules.
- Redirect to an ADMIN-configured destination (not user-controlled).
- Not introduce an open-redirect.
- Change where a 403 sends the user, not who gets one.
- Have no access-control role beyond permission.
- Configure the 403 rules.
- Handle 403 redirects.
- Redirect denials.
- Configure the redirects.
- Handle 403s.
- Send to a page.
- Handle the response.
- Customize 403s.
- Set the destination.
- Provide 403 redirection.
