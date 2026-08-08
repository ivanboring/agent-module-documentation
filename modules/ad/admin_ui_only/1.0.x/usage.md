<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Admin UI Only prevents people from accessing the non-admin site, useful for anonymous access to an API like JSON:API or GraphQL.

---

Admin UI Only restricts the Drupal front end to admin pages only — a request-event subscriber denies
(403 or 404) front-end HTML access to routes that aren't admin routes (or on a configurable whitelist), so a
site used purely as an API/CMS backend (JSON:API, GraphQL) doesn't serve its themed front-end pages to
visitors. It requires PHP 8.0, in the Web services package.

Use it to lock down a decoupled/API-only Drupal to the admin UI. This is a **security-positive hardening**
feature: it reduces the front-end attack/exposure surface for a headless backend (only the admin UI + the
API remain reachable). When adopting, ensure the allowed-routes whitelist is complete for what must stay
public (the API routes, login, etc.) — a needed route not whitelisted gets blocked, and conversely verify
nothing sensitive is inadvertently left reachable. It complements, not replaces, per-route access control.
Configure the allowed routes and the error code.

---

- Block front-end access to non-admin pages.
- Serve only admin routes + whitelist.
- Lock down an API-only/decoupled backend.
- Deny with 403 or 404 (configurable).
- Require PHP 8.0.
- Reduce the front-end exposure surface.
- Keep API routes (JSON:API/GraphQL) reachable.
- Ensure the whitelist is complete.
- Verify nothing sensitive stays reachable.
- Complement per-route access control.
- Configure the allowed routes.
- Handle the lockdown.
- Restrict the front end.
- Configure the error code.
- Harden a headless backend.
- Block themed pages.
- Configure the whitelist.
- Restrict access.
- Lock down the site.
- Serve admin only.
