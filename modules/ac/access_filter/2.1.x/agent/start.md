<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Access Filter (access_filter) — agent index

IP-based access restriction; rules are **configuration entities** at
`/admin/config/people/access_filter` behind `manage access filters`. Version **2.1.0**.
Core requirement `^9 || ^10 || ^11`.

**Three things determine whether the restriction is real rather than reassuring:**
1. **The client IP must be correct.** Behind any CDN or load balancer, Drupal's `reverse_proxy` and
   `reverse_proxy_addresses` settings must be configured — otherwise `getClientIp()` returns the
   **proxy's** address, and an `X-Forwarded-For` written by the caller is being trusted, which
   inverts the control. (`fsa`, elsewhere in this campaign, fails exactly here.)
2. **`manage access filters` is NOT marked `restrict access`** — verified against the
   `user.permissions` service. It governs who may reach the site; treat it as administrative
   regardless of what the module declares.
3. **The web server or CDN is the stronger place for this.** A rule enforced before PHP starts
   costs nothing, cannot be bypassed by an application bug, and **survives a Drupal that will not
   boot** — precisely when an IP restriction matters most.

Use this where the infrastructure is not yours to configure, or where rules must travel with the
site's configuration. Related: `restrict_route_by_ip` (wave 74) does the same at route granularity.
