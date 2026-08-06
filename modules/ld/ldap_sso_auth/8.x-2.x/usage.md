<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
LDAP SSO Auth logs users in from an SSO identity the web server has already established — typically Kerberos or NTLM setting `REMOTE_USER` — and resolves that name against the servers configured by the LDAP module.

---

The premise is that authentication happened before Drupal saw the request: Apache negotiated Kerberos, or an SSO proxy set a header, and the resulting username is sitting in `$_SERVER`. This module reads that variable, optionally splits `user@realm`, hands the name to `ldap_authentication`'s SSO login validator and calls `user_login_finalize()` if the LDAP server recognises it. No password is ever involved, which is the point and also the whole risk surface: the module's security rests entirely on the variable being unforgeable.

**Do not deploy 8.x-2.4 without reading this.** On a stock nginx/php-fpm stack — which is what DDEV, Lando and most containerised hosting use — `fastcgi_params` sets `REMOTE_USER` to the empty string when no HTTP authentication took place. The module tests the variable with `!== NULL`, and `'' !== NULL`, so its authentication provider `applies()` to every request. The service tag omits `global: TRUE`, so core's `AuthenticationSubscriber::onKernelRequestFilterProvider()` then throws `AccessDeniedHttpException('The used authentication method is not allowed on this route.')`. **Verified on a clean install: enabling the module returns 403 to every anonymous request on every route; uninstalling it returns 200.** The failure is invisible to the person configuring it, because `applies()` returns FALSE once a session has a uid, and because `/user/login`, `/user/logout` and `/user/password` are on a hard-coded exclusion list — the login page keeps working while the rest of the site 403s for anonymous visitors and crawlers.

The second thing to know is that `ssoVariable` is an unvalidated free-text field. Setting it to any `HTTP_*` name turns an attacker-supplied request header into the site's identity source; verified, an anonymous request carrying the configured header reached LDAP validation under the attacker's chosen username. Keep it on `REMOTE_USER` or `REDIRECT_REMOTE_USER`, and make sure the edge strips whatever header the origin trusts.

---

- Log users in from Kerberos negotiation done by Apache.
- Accept an NTLM-authenticated Windows desktop identity.
- Map an SSO username to a Drupal account via LDAP.
- Strip a `@realm` suffix before the LDAP lookup.
- Strip a domain name from the remote username.
- Exclude specific paths from SSO handling.
- Exclude specific hostnames from SSO handling.
- Redirect users somewhere specific after logout.
- Suppress the "you are now logged in" message.
- Reuse an existing corporate LDAP directory for site access.
- Avoid asking intranet users for a password at all.
- Combine SSO with the LDAP module's user provisioning.
- Diagnose which server variable the web server is actually setting.
- Confirm an LDAP server's bind method is compatible with SSO.
- Keep password reset working alongside SSO.
- Decide whether an SSO deployment needs a header or a real Kerberos negotiation.
- Audit an inherited site that already has this module enabled.
- Understand why anonymous users are seeing 403 on an nginx host.