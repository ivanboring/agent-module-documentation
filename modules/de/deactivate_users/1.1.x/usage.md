<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Deactivate Inactive Users blocks accounts that have been inactive for a set number of days, run on cron — an account-hygiene security control.

---

Deactivate Inactive Users automatically blocks accounts that have not logged in for a configured
number of days — run on cron, it identifies accounts past the inactivity threshold and blocks them, with
a grace/recently-changed window so an admin's just-unblocked user isn't immediately re-blocked. It can
notify users. It depends on Token and is configured at `deactivate_users.admin_settings` (admin routes
gated by `administer site configuration`).

Use it as an account-hygiene/security control: disabling dormant accounts reduces the attack surface
(stale accounts with old/weak credentials are a common target). This is a positive security measure. When
adopting, set the inactivity threshold to match your policy, be careful not to block service/system
accounts (exclude them if needed), and ensure the notification/grace settings fit your users. It is a
security/administration feature; blocking is reversible (admins can unblock).

---

- Block accounts inactive for N days.
- Run deactivation on cron.
- Reduce attack surface from stale accounts.
- Apply an account-hygiene control.
- Depend on Token.
- Configure at deactivate_users.admin_settings.
- Gate admin routes by administer site configuration.
- Notify users before/after blocking.
- Use a grace window to avoid re-blocking.
- Exclude service/system accounts.
- Set the inactivity threshold.
- Apply a positive security measure.
- Disable dormant accounts.
- Reverse by unblocking.
- Match your account policy.
- Block on inactivity.
- Reduce credential-based risk.
- Handle stale accounts.
- Configure notifications.
- Secure inactive accounts.
