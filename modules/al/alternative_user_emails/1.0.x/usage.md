<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Alternative User Emails stores alternative email addresses for users.

---

Alternative User Emails lets a user account store **additional email addresses** beyond the primary one —
so a person with several addresses can have them recorded on their account. It depends on core User and Field.

Use it where accounts need multiple email addresses on record. It is a user/identity feature. Security notes:
alternative emails are **personal data** (store/expose them per your privacy policy), and if any workflow lets
users **log in or reset a password by an alternative address**, ensure those addresses are **verified** and
**unique** (an unverified or duplicate alternative email is an account-takeover/identity risk) — the module
stores the addresses; enforce verification/uniqueness in whatever consumes them. It has no access-control role
of its own. Configure the alternative-email field.

---

- Store alternative user emails.
- Record multiple addresses per account.
- Depend on core User and Field.
- Treat alternative emails as personal data.
- Store/expose them per policy.
- Handle multiple addresses.
- Verify alternative addresses if used for login/reset.
- Ensure alternative addresses are unique.
- Have no access-control role of its own.
- Configure the field.
- Handle alternative emails.
- Add extra emails.
- Record addresses.
- Handle the field.
- Store extra emails.
- Configure emails.
- Handle identity.
- Add alternative emails.
- Configure alternatives.
- Provide multiple emails.
