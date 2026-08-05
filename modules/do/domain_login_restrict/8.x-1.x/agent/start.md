<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Domain Login Restrict (domain_login_restrict) — agent index

Prevents login on a domain the account is not affiliated with, on a **Domain**-module multi-site.
Requires `domain` and `domain_access`. Version **8.x-1.4**.
Core requirement `^8 || ^9 || ^10 || ^11 || ^12` — a five-major span; a statement of intent, not
evidence of testing.

Permission: **`login to any domain`**, `restrict access: true` — for administrators and support
staff who must reach every domain.

**The exposure it addresses, which genuinely surprises people:** Domain runs several sites from
one installation with **one user table**, and authentication is **global**. Domain governs
*content* access, not *login* — so an account created for one site can sign in on **every** domain
the installation serves. On a group of brands, a set of client sites, or a public site beside a
partner portal, that is a real boundary failure.

**Two things to verify on the specific installation — a login restriction with gaps is worse than
none, because it is trusted:**
1. **Which entry points are covered.** A check on the login form is not a check on **password
   reset**, an **SSO callback**, a **REST/JSON:API** session request, or **`drush uli`**.
2. **Existing sessions.** A restriction applied only at login leaves anyone already signed in
   unaffected when their affiliations change.
