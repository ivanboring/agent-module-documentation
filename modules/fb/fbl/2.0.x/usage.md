<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Field Based Login allows users to login with different fields.

---

Field Based Login (fbl) lets users log in with alternative identifiers — email, or configured custom
fields — instead of only the username. It is configured at `fbl.configuration`, provides its own permissions,
depends on core User.

Use it to allow flexible login identifiers. Its implementation is sound: on the login form it **resolves the
entered identifier to the real username** (a validate handler that sets the form's `name` value to the
matched account's username) and then lets **Drupal core's login authentication verify the password** against
that username — so it does **not** weaken the credential check (wrong password still fails; core flood control
still applies), and it uses a **neutral "unrecognized username or password" message** (avoiding a clear
enumeration oracle). Security notes to keep correct: ensure the login field is **unique** (an identifier must
map to exactly one account — ambiguity is a login/security problem), and be aware allowing email/field login
widens the identifier surface. It has no other access-control role. Configure which fields allow login.

---

- Log in with alternative fields.
- Log in with email/custom fields.
- Resolve the identifier to the username.
- Let core verify the password.
- Keep core flood control.
- Configure at fbl.configuration.
- Provide its own permissions.
- Not weaken the credential check.
- Use a neutral login-failure message.
- Ensure the login field is unique.
- Avoid identifier ambiguity.
- Have no other access-control role.
- Configure which fields allow login.
- Handle field-based login.
- Map identifiers to usernames.
- Verify the password (core).
- Configure logins.
- Handle custom login IDs.
- Restrict to a unique field.
- Configure field login.
