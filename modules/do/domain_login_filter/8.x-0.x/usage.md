<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Domain Login Filter prevents users from logging in to a domain they are not assigned to, based on Domain Access assignments.

---

Domain Login Filter restricts login per domain — preventing users from logging in on a domain they are
not assigned to under Domain Access. On the login form it adds a validation handler
(`_domain_login_filter_domain_check`) that compares the active domain against the user's Domain Access
values and, if the current domain is not among them, blocks the login with an error ("The username %name has
not been activated or is blocked on this domain."). It depends on the Domain (Access) module.

Use it to scope user logins to their assigned domains on multi-domain sites. This is a genuine login-access
control implemented correctly: the check runs as a **login-form validation handler** and sets a form error,
so authentication does not complete for a user on a non-assigned domain (fail-closed for that domain). When
adopting: ensure users' Domain Access assignments are correct (the assignments decide who can log in where),
and note this gates *interactive login on that domain* — it complements, not replaces, per-domain content
access. Configure users' domain assignments.

---

- Restrict login per domain.
- Block login on unassigned domains.
- Check active domain vs Domain Access values.
- Add a login-form validation handler.
- Set a form error to block login.
- Depend on the Domain module.
- Fail closed for non-assigned domains.
- Scope logins to assigned domains.
- Ensure domain assignments are correct.
- Complement per-domain content access.
- Gate interactive login by domain.
- Configure users' domain assignments.
- Prevent cross-domain login.
- Enforce domain login scope.
- Validate login by domain.
- Block unassigned-domain login.
- Restrict multi-domain login.
- Handle domain login.
- Check domain membership.
- Restrict login domains.
