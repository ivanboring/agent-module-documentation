<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Domain Login Restrict prevents a user from logging in on a domain they are not affiliated with, on a Domain-module multi-site.

---

The Domain module runs several sites from one Drupal installation with one user table, and that shared user table is exactly where expectations diverge from behaviour. Site builders assume an account created for the German site belongs to the German site; in fact it can log in on every domain the installation serves, because authentication is global and the Domain module governs *content* access rather than *login*. On an installation hosting genuinely separate audiences — a group of brands, a set of client sites, a public site alongside a partner portal — that is a real exposure rather than a curiosity, and it surprises people. This module adds the missing check: login succeeds only on a domain the account is affiliated with, with a **`login to any domain`** permission, correctly marked `restrict access: true`, for administrators and support staff who must reach all of them. Version **8.x-1.4**, requiring `domain` and `domain_access`, and declaring `^8 || ^9 || ^10 || ^11 || ^12` — a five-major span that is a statement of intent rather than evidence of testing. Two things to verify on the specific installation, since a login restriction that has gaps is worse than none because it is trusted. **Which entry points it covers**: a check on the login form is not a check on password reset, on an SSO callback, on a REST or JSON:API session request, or on `drush uli`. And **what happens to an existing session** when a user's affiliations change — a restriction applied only at login leaves anyone already signed in unaffected.

---

- Stop cross-domain logins on a multi-site.
- Keep brand sites' users separate.
- Restrict a client site's logins.
- Prevent access to a partner portal.
- Enforce domain affiliation at login.
- Separate audiences on one installation.
- Allow administrators to log in anywhere.
- Prevent an unexpected shared user table exposure.
- Support a group of country sites.
- Keep a staff domain closed to members.
- Restrict logins per affiliate.
- Support a devolved multi-site.
- Enforce a tenancy boundary.
- Reduce a multi-site's attack surface.
- Support a white-label deployment.
- Keep a test domain closed.
- Enforce per-domain user separation.
- Meet a client isolation requirement.
