<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# One Time Login Link Admin (one_time_login_link_admin) — agent index

Generates (or emails) a one-time login link for a user from the admin UI — `drush uli` without a
shell. No dependencies, no configuration. Core requirement `^8 || ^9 || ^10 || ^11`.

| Route | Path | Requirements |
|---|---|---|
| `…generate_login_link` | `/admin/people/generate-one-time-login-link-admin/{user}` | `administer users` **+ `_csrf_token: 'TRUE'`** |
| `…email_login_link` | `/admin/people/email-one-time-login-link-admin/{user}` | `administer users` **+ `_csrf_token: 'TRUE'`** |

Key facts:
- **Both routes carry a CSRF token**, which is the correct and necessary design here: without it,
  a crafted link could make a logged-in administrator mint a login link for an attacker-chosen
  account. Worth noting as a positive when comparing with modules in this campaign that omit it.
- Reuses core's `administer users`; declares **no permission of its own**. That permission is
  already administrator-equivalent, so no new privilege boundary is introduced.
- Whole module is `src/Controller/OneTimeLoginLinkController.php` plus the routing and `.module`
  files.
- Operational guidance worth passing on: the *generate* variant displays a working login link to
  the operator, so it grants that person access to the account. Prefer the *email* variant, and
  treat generation as an action to be logged and justified.
