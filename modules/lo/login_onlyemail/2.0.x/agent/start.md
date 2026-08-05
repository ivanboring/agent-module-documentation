<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Login with email only (login_onlyemail) — agent index

Makes the Drupal login form accept **only** an email address as the identifier.
Core requirement `^10 || ^11`.

Key facts:
- The whole module is four files: `login_onlyemail.module`, `.info.yml`, `README.md`,
  `LICENSE.txt`. No `src/`, no routes, no permissions, no config schema, no services.
- **There is nothing to configure.** Enabling the module is the entire setup, and the change is
  site-wide and unconditional — no per-role, per-path or per-form exemption exists.
- It alters the **login form only**. Usernames still exist and are still used for display; this
  module does not turn the email address into the account's display name.
- If a site needs "username *or* email" rather than email only, this is the wrong module —
  `email_registration` accepts both.
- Uninstalling restores the stock login form, so it is cheap to trial.

```bash
drush en login_onlyemail -y     # that's the whole install
```
