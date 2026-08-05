<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Restrict route by IP limits named routes to a configured set of IP addresses, so an administrative or sensitive path is only reachable from approved networks.

---

Network restriction is a layer that permissions cannot provide: a stolen administrator password is worth much less if `/user/login` or `/admin` only answers from the office range and the VPN. It is standard practice for admin interfaces, staging environments, webhook receivers and anything whose audience is known by location rather than by identity. The usual place for it is the web server or the CDN, and that remains the stronger position — a rule in nginx or Cloudflare is enforced before PHP runs, costs nothing and cannot be bypassed by an application bug. This module puts it in Drupal instead, as `restrict_route` configuration entities at `/admin/config/system/restrict_route_by_ip` behind an `admin restrict route by ip` permission marked `restrict access: true`. That is worth having when the infrastructure is not under your control, when the rules must move with the site's configuration between environments, or when they need to be editable without a deployment. Two things determine whether the restriction is real. **The client IP must be correct**: behind any CDN or load balancer, `getClientIp()` returns the proxy's address unless `reverse_proxy` and `reverse_proxy_addresses` are set in `settings.php`, and a module that trusts `X-Forwarded-For` without that configuration is trusting a header the caller writes. And **route coverage is not path coverage** — restricting `user.login` does not restrict the same functionality reached through a REST endpoint, an alias or another route that lands in the same place.

---

- Restrict admin pages to an office network.
- Limit the login form to a VPN range.
- Protect a staging environment by IP.
- Restrict a webhook endpoint to a provider's range.
- Lock down a reports page.
- Add a network layer to admin access.
- Restrict a route to internal users.
- Protect a configuration page.
- Limit access to a partner's addresses.
- Reduce exposure of an admin interface.
- Restrict a dangerous route.
- Meet a security review requirement.
- Keep rules in exported configuration.
- Restrict access without server config.
- Protect a payment callback route.
- Limit a devel route to developers.
- Add defence in depth for admin paths.
- Restrict a data export endpoint.
