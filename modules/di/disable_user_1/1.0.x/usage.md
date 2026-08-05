<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Disable User 1 blocks the account with ID 1 — Drupal's implicit superuser, which bypasses every permission check — as a hardening measure.

---

User 1 is a special case in Drupal: it is not a role or a permission set but a hard-coded exception, so `hasPermission()` returns TRUE for it whatever the permissions page says. That makes it the single most valuable account on any site and the one least likely to be governed: it is typically created at install with a password chosen in a hurry, shared during a build, and never audited afterwards. A hardened site therefore wants it unusable, with real administrators holding an administrator role whose permissions are visible and reviewable. This module does exactly that — `src/EventSubscriber` blocks the account — and it is five files with no dependencies, no routes, no permissions and no configuration, on core `^10 || ^11`. Two things to establish before enabling it. Confirm that a genuine administrator account with an administrator role exists and works, because disabling user 1 without one leaves nobody able to administer the site. And know the recovery path: `drush uli --uid=1` and Drush's user commands operate below the level this module intercepts, so command-line access remains the way back in — which is also the argument for the module, since it moves superuser access from a password to server access.

---

- Disable Drupal's implicit superuser account.
- Harden a site against user 1 compromise.
- Force administration through a reviewable role.
- Meet a security review recommendation.
- Remove a shared build-time account from use.
- Reduce the value of a leaked password.
- Make permissions the real access model.
- Prevent login as the permission-bypassing account.
- Support a least-privilege policy.
- Close an account nobody audits.
- Reduce risk on a long-lived site.
- Move superuser access to the command line.
- Satisfy a penetration-test finding.
- Prevent accidental use of user 1.
- Enforce role-based administration.
- Reduce the blast radius of credential theft.
- Align with Drupal hardening guidance.
- Remove an unmonitored access path.
