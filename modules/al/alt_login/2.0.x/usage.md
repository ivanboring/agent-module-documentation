<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Alternative Login ID & Display Name provides options for populating the username field for logging on and for displaying the username.

---

Alternative Login ID & Display Name (alt_login) lets you configure how users log in and how their name
is displayed — allowing an alternative login identifier (e.g. logging in with an email address as well as/
instead of the username) and configuring the displayed username. It is configured at `alt_login.admin`.

Use it to offer flexible login identifiers and display names. It is an authentication/user feature. Security
notes: it changes the **login identifier**, not the credential check — the password is still verified by
core, and login flood control still applies; ensure the alternative identifier (e.g. email) is unique so it
maps to exactly one account (ambiguity could confuse login), and be aware that allowing email-as-login can
make the login identifier easier to enumerate (an existing best practice: keep registration/login messages
neutral). It has no other access-control role. Configure the login/display options.

---

- Log in with an alternative identifier.
- Allow email-as-login.
- Configure the displayed username.
- Configure at alt_login.admin.
- Keep the password check (core).
- Rely on core login flood control.
- Ensure the alternative identifier is unique.
- Avoid identifier ambiguity.
- Keep login messages neutral (enumeration).
- Have no other access-control role.
- Configure login/display options.
- Change the login identifier.
- Handle flexible login.
- Configure the identifier.
- Set the display name.
- Handle login IDs.
- Configure logins.
- Allow flexible identifiers.
- Configure display names.
- Handle alternative login.
