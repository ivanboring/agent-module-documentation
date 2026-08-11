<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Administrator Login blocks non-admins from the login form — but only the form, not the JSON login.

---

Administrator Login is intended to limit login and password-reset access exclusively to administrators — it adds a validation handler to the login form that blocks accounts without the `administrator` role. It's aimed at locking a site down to admins-only (e.g. staging/staff sites).

SECURITY (Danger 3): the restriction is **form-only** — it hooks the `user_login_form` `#validate` handler, but core's JSON login endpoint (`user.login.http`, `POST /user/login?_format=json`) never builds that form, so a non-admin can still authenticate through it (and via basic_auth/oauth). It gives false protection; see the local security.md. To truly lock a site to admins, enforce at the authentication/request layer and deny the JSON login/REST for non-admins. Depends on core `user`; supports Drupal 10 and 11.

---

- Aim to restrict login to admins.
- Restrict password reset to admins.
- Add a login-form validate handler.
- Block non-admin accounts on the form.
- Target staging/staff sites.
- Be FORM-ONLY (bypassable).
- Not block `POST /user/login?_format=json`.
- Not block basic_auth/oauth logins.
- Give false protection (Danger 3).
- Enforce at the auth layer instead (fix).
- Deny the JSON login/REST for non-admins (fix).
- Depend on core `user`.
- Support Drupal 10 and 11.
- See the local security.md.
- Cover the reset form only.
- Hook user_login_form
- Not a real auth gate
- Require an auth-level fix
