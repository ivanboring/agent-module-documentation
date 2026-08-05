<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Restrict route by IP (restrict_route_by_ip) — agent index

Limits named routes to configured IP addresses. `restrict_route` **configuration entities** at
`/admin/config/system/restrict_route_by_ip`; `admin restrict route by ip` is
`restrict access: true`. Version **1.3.0**. Core requirement `^10 || ^11`.

**Say this first: the web server or CDN is the stronger place for this.** A rule in nginx or
Cloudflare is enforced **before PHP runs**, costs nothing, and cannot be bypassed by an application
bug. This module is right when the infrastructure is not under your control, when the rules must
travel with configuration between environments, or when they must be editable without a deployment.

**Two things determine whether the restriction is real:**
1. **The client IP must be correct.** Behind any CDN or load balancer `getClientIp()` returns the
   **proxy's** address unless `reverse_proxy` and `reverse_proxy_addresses` are set in
   `settings.php`. Anything trusting `X-Forwarded-For` without that is trusting a header the caller
   writes. (See the `fsa` finding in this campaign for exactly that failure.)
2. **Route coverage is not path coverage.** Restricting `user.login` does not restrict the same
   functionality reached through a REST endpoint, an alias, or another route landing in the same
   place. Enumerate what actually reaches the thing being protected.
