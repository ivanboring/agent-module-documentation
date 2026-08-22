# LDAP SSO Auth — manual setup guide

**LDAP SSO Auth** (`ldap_sso_auth`) logs users in from an identity the web server
has already established — typically **Kerberos** or **NTLM** setting the
`REMOTE_USER` variable — and resolves that name against the servers configured by
the [LDAP](https://www.drupal.org/project/ldap) suite. It is a lighter,
faster‑feeling alternative to the `ldap_sso` module: it covers fewer use cases,
but it authenticates without any page redirects during login. The module
describes itself as the right choice when *all* of a site's content should be
visible only to authenticated users.

The premise is that authentication happened before Drupal saw the request:
Apache negotiated Kerberos, or an SSO proxy set a variable, and the resulting
username is already sitting in the request environment. This module reads that
variable, optionally trims a `@realm` or domain suffix, hands the name to the
LDAP suite's SSO login validator, and — if the directory recognises it — logs the
person in. **No password is ever involved.** That is the whole point, and also
the entire risk surface: the security of this module rests completely on that
server variable being unforgeable.

Two things must be understood before you deploy this release, because both can
bite hard and quietly:

- **On a stock nginx / php‑fpm stack** (which is what DDEV, Lando, and most
  containerised hosting use), nginx's default `fastcgi_params` sets `REMOTE_USER`
  to an empty string when no HTTP authentication took place. This release's
  authentication provider treats that empty string as "present", so it applies to
  every request — and because of how its service is registered, Drupal core then
  **denies anonymous access to every route**. In practice: enabling the module on
  such a stack can return **403 to every anonymous visitor and crawler**, while
  the admin's own logged‑in session and `/user/login` keep working, so the
  breakage is invisible from the inside. Test anonymous access on your exact stack
  before trusting it in production.
- **The "SSO variable" setting is free text and unvalidated.** If you point it at
  an `HTTP_*` header name, you turn an attacker‑supplied request header into your
  site's identity source. Keep it on `REMOTE_USER` (or `REDIRECT_REMOTE_USER`),
  and make sure your edge strips whatever header the origin trusts.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer, enable the
   module, and confirm the LDAP suite dependencies.
2. [Configuration](configuration/index.md) — the settings form field by field,
   plus the trust model and the deployment caveats you must check.

## Where it lives in the admin menu

The settings form (`ldap_sso_auth.admin_form`) lives with the LDAP suite at
**Administration → People → LDAP servers → LDAP SSO Auth**
(`/admin/config/people/ldap/sso-auth`). Note that although the module's help text
mentions a `/user/login/sso` route, no such route exists in this release —
automatic login is simply what the authentication provider does on each request;
there is no explicit SSO login URL to link to.
