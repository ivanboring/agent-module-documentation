<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Admin Denied (admin_denied) — agent index

**Hardens uid 1** — disables password login for the superuser by randomizing its username/password
(on cron). Version **2.0.1**.

**Security positive:** removes the highest-value credential (uid 1 password) and forces named admin
accounts (accountability). **Op note:** ensure a trusted named account has the administrator role
**before** relying on it — uid 1 password login is being removed (don't lock yourself out).