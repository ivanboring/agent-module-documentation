<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Display Name provides various user display name field types.

---

Display Name provides **user display-name field types** — so a site can show a friendly display name
(first/last, nickname, etc.) instead of the raw username wherever the user's name is rendered. It depends on
core Field and User and Token, provides its own permissions.

Use it to customize how usernames display. It is a user/fields feature. Note it changes the **displayed** name,
not the **login** username or account identity — the actual account (and login) is unchanged, and display-name
values are user-entered content (output through normal field escaping). It has no access-control role beyond
its permission. Configure the display-name fields.

---

- Provide user display-name fields.
- Show friendly names vs raw usernames.
- Support nickname/first-last display.
- Depend on core Field/User/Token.
- Provide its own permissions.
- Customize name rendering.
- Change the displayed name, not the login.
- Keep account identity unchanged.
- Output display names via normal escaping.
- Have no access-control role beyond permission.
- Configure the display-name fields.
- Handle display names.
- Set display names.
- Configure the fields.
- Show display names.
- Handle the fields.
- Customize names.
- Add display names.
- Set the fields.
- Provide display names.
