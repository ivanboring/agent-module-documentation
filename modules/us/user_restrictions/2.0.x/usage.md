<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
User Restrictions defines rules — by username, email address or host — that refuse registration or login to matching accounts.

---

Drupal 7 had this in core as the "access rules" feature and Drupal 8 removed it, leaving a gap that every community site notices: the ability to say "no username containing this string", "no address at this disposable-mail domain", "nobody from this host". Core now offers only the `ban` module, which blocks IP addresses and nothing else. This module restores rules as configuration entities at `/admin/config/people/user-restrictions`, with **both** permissions marked `restrict access: true` — `administer user restrictions` and, importantly, `bypass user restrictions rules`, so trusted accounts can be exempted without weakening the rules themselves. Version **2.0.0**, but read the core requirement carefully: **`">=8"`**, an open-ended constraint with no upper bound, and the packaging date is **2022**. An unbounded requirement is not a compatibility statement — it means the module will install on any future core and tells you nothing about whether it works, so test it rather than trusting the declaration. Two things about restriction rules generally. **Email-domain blocking is an arms race** that catches ordinary users as collateral, since disposable-mail domains multiply faster than any list and legitimate people use forwarding services. And **host-based rules depend on the client IP being right**, so behind a CDN or load balancer they match the proxy unless trusted-proxy settings are configured correctly in `settings.php`.

---

- Block registrations from a disposable-mail domain.
- Refuse usernames containing a banned word.
- Restore Drupal 7 access rules behaviour.
- Block a persistent spammer's host.
- Reduce spam registrations.
- Reserve usernames like admin.
- Refuse logins from a host range.
- Exempt trusted accounts from rules.
- Enforce a naming policy at registration.
- Block a known abusive email pattern.
- Moderate a community's signups.
- Prevent impersonation usernames.
- Reduce moderation workload.
- Block registration from a competitor domain.
- Enforce corporate email-only registration.
- Refuse a range of addresses.
- Manage restrictions as configuration.
- Audit which restrictions are active.
