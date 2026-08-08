<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Admin Denied hardens the Drupal superuser (uid 1) by preventing password-based login for it — randomizing its username and password — so admins must use their own named accounts.

---

User 1 is Drupal's all-powerful superuser, and a password on it is a liability: it is the single most valuable credential to brute-force or phish, and shared uid-1 logins destroy accountability. Admin Denied applies a well-known hardening practice: it disables password login for user 1 by randomizing its username and password (on cron, with a configurable prefix), so nobody can log in as uid 1 with a password. Administrators instead use their own named accounts with appropriate roles — which restores per-person accountability and removes the high-value target. This is a genuine security control, and a good one for any site that cares about admin-account hygiene. The one operational note is not to lock yourself out: ensure at least one trusted named account has the administrator role before relying on it, since uid 1 password login is being removed. A small, worthwhile hardening addition.

---

- Disable uid 1 password login.
- Harden the superuser account.
- Prevent brute-force of user 1.
- Randomize the uid 1 credentials.
- Enforce named admin accounts.
- Restore admin accountability.
- Remove a high-value target.
- Ensure a named admin exists first.
- Avoid uid 1 lockout.
- Apply admin-account hygiene.
- Block password login for user 1.
- Adopt a known hardening practice.
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