<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# LDAP SSO Auth (ldap_sso_auth) — agent index

Web-server SSO login (Kerberos/NTLM/`REMOTE_USER`) resolved against the LDAP module's servers.
Configure at `/admin/config/people/ldap/sso-auth`. Version **8.x-2.4**.
Core requirement `^9 || ^10 || ^11`. Depends on `ldap_servers` + `ldap_authentication`.

**Do not recommend this release without stating the following.**

1. **It 403s all anonymous traffic on nginx/php-fpm.** `applies()` tests the SSO variable with
   `!== NULL`; nginx's stock `fastcgi_params` sets `REMOTE_USER` to `''`, which is not NULL, so
   the provider applies to every request. The service tag has **no `global: TRUE`**, so core's
   provider filter throws `AccessDeniedHttpException`. **Verified:** anonymous `GET /node` = 403
   with the module enabled, 200 with it uninstalled. Authenticated users are unaffected and
   `/user/login` is on the exclusion list, so the breakage is invisible from the admin's session.
   Two one-line fixes: add `global: TRUE` to the tag, and test with `!empty()`.
2. **`ssoVariable` is unvalidated.** It is fed straight to `$_SERVER`. Any `HTTP_*` value makes an
   attacker-controlled header the identity. **Verified:** an anonymous request with the configured
   header reached LDAP validation under the supplied username; only the absence of a configured
   LDAP server stopped the login. There is no password check anywhere in this flow by design.
3. Raw `$_SERVER` value is concatenated unescaped into the settings form description — attacker
   markup renders on the admin page (core's admin XSS filter strips `onerror`).

Permissions: none of its own; the settings route uses `administer site configuration`.

**No `/user/login/sso` route exists** in this release, despite the help text naming it — the path
appears only in `defaultPathsToExclude()`. Automatic SSO is what the provider does; there is no
explicit SSO login URL to link to.

Config: `ldap_sso_auth.settings` — `ssoVariable`, `seamlessLogin`, `ssoSplitUserRealm`,
`ssoRemoteUserStripDomainName`, `ssoExcludedPaths`, `ssoExcludedHosts`, `redirectOnLogout`,
`logoutRedirectPath`, `enableLoginConfirmationMessage`.

`validateForm()` correctly refuses SSO against an LDAP server bound with `user` or `anon_user`,
because with SSO the user's credentials are never available to bind with.