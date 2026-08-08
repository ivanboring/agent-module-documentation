<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Forgot Username provides a public form that emails a user their username when they enter their email address.

---

Forgot Username adds a public "forgot username" form at `/user/username` (for logged-out users): a
visitor enters their email address and the module emails them their Drupal username. It complements
Drupal's password reset, helping users who remember their email but not their username.

**Security caveat — the form is an account-enumeration oracle (see the module's local security notes).**
It returns **different responses** depending on whether the email has an account: an existing email gets
"Your username has been emailed", while an unknown email gets a form error "There is no account with that
email address." An unauthenticated attacker can therefore submit email addresses to learn which are
registered — building a validated target list for phishing and credential-stuffing (verified on this
site). The username itself only goes to the address that owns it; the leak is the *existence* of an
account. Before using it where user emails should not be probeable, patch the form to return a single
neutral message regardless of account existence and add flood/rate limiting (the pattern the
`username_enumeration_prevention` module applies). Used with that fix, it is a reasonable
account-recovery convenience.

---

- Email a user their username.
- Provide a forgot-username form.
- Complement password reset.
- Serve logged-out users at /user/username.
- Help users who forgot their username.
- Recover the username by email.
- Know it enables account enumeration.
- Return distinct exists/not-found responses.
- Fix to a neutral message.
- Add flood/rate limiting.
- Avoid probeable user emails.
- Patch before public use.
- Send username only to the owner.
- Understand the leak is account existence.
- Reference username_enumeration_prevention.
- Mitigate phishing target lists.
- Handle account recovery.
- Verify the enumeration caveat.
- Neutralize the response difference.
- Use with the enumeration fix.
