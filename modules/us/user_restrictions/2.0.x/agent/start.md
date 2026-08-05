<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# User Restrictions (user_restrictions) — agent index

Rules refusing registration/login by **username, email address or host**, as configuration entities
at `/admin/config/people/user-restrictions`. Version **2.0.0**, packaged **2022**.

**Core requirement is `">=8"` — open-ended, with no upper bound.** That is not a compatibility
statement: it means the module installs on any future core and tells you nothing about whether it
works. Test rather than trust the declaration.

Permissions, **both `restrict access: true`** — a good arrangement:
- `administer user restrictions`
- `bypass user restrictions rules` — exempts trusted accounts **without weakening the rules**.

**Why it exists:** Drupal 7 had this in core as "access rules"; Drupal 8 removed it. Core now
offers only `ban` (IP addresses, nothing else).

**Two things about restriction rules generally:**
- **Email-domain blocking is an arms race** that catches ordinary users as collateral — disposable
  domains multiply faster than any list, and legitimate people use forwarding services.
- **Host rules depend on the client IP being right.** Behind a CDN or load balancer they match the
  **proxy** unless `reverse_proxy` / `reverse_proxy_addresses` are configured in `settings.php`.

Related in this campaign: `username_validation` (wave 72) constrains the *shape* of names;
this refuses *specific* names, addresses and hosts.
