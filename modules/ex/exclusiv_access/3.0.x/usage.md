<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Exclusiv Access gates content behind a shared token, with a permission to bypass.

---

Exclusiv Access provides a lightweight access limitation: content can be restricted so that only requests carrying a valid token (e.g. a shared link parameter) may view it, with a `see content without token` permission for roles that should bypass the gate. It's aimed at soft-gating (preview links, unlisted content) rather than strong security.

It's explicitly a **light** limitation — a shared token is bearer-style access, so it is not a substitute for real per-user access control on sensitive content. Depends on core `field`; supports Drupal 10.1+ and 11.

---

- Gate content behind a token.
- Require a valid token to view.
- Provide `see content without token` bypass permission.
- Support preview/unlisted links.
- Offer soft-gating.
- Treat the token as bearer access.
- Not replace real access control.
- Depend on core `field`.
- Support Drupal 10.1+ and 11.
- Restrict casual access.
- Share access via a link token.
- Configure the token gate.
- Bypass for trusted roles.
- Limit content lightly.
- Support unlisted content.
- Guard preview content.
- Keep it lightweight.
- Avoid for sensitive data.
