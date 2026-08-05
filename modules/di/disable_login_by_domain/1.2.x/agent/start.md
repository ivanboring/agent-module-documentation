<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Disable login by domain (disable_login_by_domain) — agent index

Disables the login form on configured hostnames. Depends on core `user`. Settings at
`/admin/config/people/disable-login-by-domain` behind `administer site configuration`.
Version **1.2.0**. Core requirement `^9 || ^10 || ^11`.

**Why one install answers to several hostnames, and why it matters:** a canonical domain plus a
legacy one kept for redirects; a public site plus an editor hostname behind a VPN; a CDN-fronted
host plus its origin. A login form on a **legacy domain nobody monitors** is a credential-stuffing
target that raises no alarm; one on an **origin hostname** bypasses whatever rate limiting and bot
protection the CDN provides.

**Two things to verify — a login restriction with gaps is worse than none, because it is trusted:**
1. **Which entry points are covered.** Disabling the login *form* is not disabling
   *authentication*. Check **password reset**, any **SSO callback**, **HTTP basic auth** if
   enabled, and **REST/JSON:API** session requests — each can create a session without the form.
2. **The hostname must be the real one.** The matched value should come from Drupal's
   **trusted-host** configuration, not an unvalidated `Host` header — otherwise the restriction is
   decided by the caller.

Related: `domain_login_restrict` (wave 73) restricts by Domain-module affiliation rather than by
hostname.
