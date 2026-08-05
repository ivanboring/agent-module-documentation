<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Disable login by domain turns the login form off on particular hostnames, so a site served under several domains can accept logins on some and not others.

---

The pattern comes up whenever one Drupal install answers to more than one hostname, which is more common than it sounds: a canonical domain and a legacy one kept for redirects, a public site and an editor-facing hostname behind a VPN, a marketing domain and the application domain, a CDN-fronted host alongside the origin. Login should generally be available on exactly one of those, and leaving it enabled on all of them creates avoidable exposure — a login form on a legacy domain nobody monitors is a credential-stuffing target that raises no alarm, and one on an origin hostname that bypasses the CDN also bypasses whatever rate limiting and bot protection the CDN provides. This module makes that a setting, version **1.2.0** on `^9 || ^10 || ^11`, depending on core `user`, configured at `/admin/config/people/disable-login-by-domain` behind `administer site configuration`. Two things to verify, because a login restriction with gaps is worse than none — it is trusted. **Which entry points are covered**: disabling the login *form* is not disabling authentication, so check password reset, any SSO callback, HTTP basic auth if enabled, and REST or JSON:API session requests, each of which can create a session without the form. And **the hostname must be the real one**: the value being matched should come from Drupal's trusted-host configuration rather than from an unvalidated `Host` header, or the restriction is decided by the caller.

---

- Disable login on a legacy domain.
- Allow login only on the canonical hostname.
- Keep the login form off a marketing domain.
- Disable login on an origin hostname.
- Force logins through the CDN.
- Restrict login to an editor hostname.
- Reduce credential-stuffing surface.
- Disable login on a redirect-only domain.
- Keep authentication on one host.
- Support a multi-domain install.
- Disable login on a preview domain.
- Restrict logins during a migration.
- Keep a legacy host read-only.
- Reduce unmonitored login endpoints.
- Support a split public/editor architecture.
- Disable login on a country domain.
- Enforce a single authentication host.
- Support a hostname-based access policy.
