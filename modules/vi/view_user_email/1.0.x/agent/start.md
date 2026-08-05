<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# View User Email (view_user_email) — agent index

One permission granting visibility of other users' email addresses. **No dependencies, no
routes, no configuration.** Core requirement `^8 || ^9 || ^10 || ^11`.

Key facts:
- Whole module: `view_user_email.module` + `view_user_email.permissions.yml`.
- The permission is **`access email field`**, marked `restrict access: TRUE`. That flag is
  appropriate — granting it exposes personal data for **every** account on the site.
- **All-or-nothing.** There is no scoping to a role, a group, or a subset of users. If the need
  is "see the addresses of users in my group", this is the wrong tool.
- It is a **field access** change, so verify it in every context that reads the field, not just
  the profile page:
  - user profile display,
  - Views (a listing with the mail field becomes readable by the granted role),
  - **REST / JSON:API** — field access is exactly what stands between the role and a bulk export
    of every address on the site.
- GDPR framing: this grants access to personal data. Record who holds it and why; it is the kind
  of grant a data-protection review will ask about.
