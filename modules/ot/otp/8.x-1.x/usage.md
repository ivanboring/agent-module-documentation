<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
OTP for account creation verifies a registrant's email address by sending a one-time code and asking them to enter it, instead of sending a link they click.

---

Drupal's own verification is a link in an email: register, receive a message, click, account activated. It works and it has two weaknesses that matter in practice. The link is a **credential in an email** and can be consumed by a mail scanner, a link-preview bot or anyone with access to the inbox, and it takes the user out of the flow — they leave the browser, go to their mail, and a proportion never come back. A code entered on the page keeps them where they are, and a code is worth much less to something that merely follows URLs. This module supplies that flow, with a verification form at `/user/register/otp` and settings at `/admin/config/people/otp`, version **8.x-1.1** on a core range spanning `^8` through `^11`. The verification route is `_access: 'TRUE'` — necessarily so, since the person using it is not yet authenticated — which puts the whole weight of the design on what the form does with the code, and that is what to check on the specific release. **Code length and alphabet** determine the search space; **an attempt limit** is what makes that space matter, since a six-digit code with unlimited guesses is a million tries against a single account and no more; **expiry** bounds the window; and the comparison should use `hash_equals()` rather than `==`. Confirm those four before relying on it, and confirm that flood control applies to the send step too, or the form becomes a way to have your site email arbitrary addresses.

---

- Verify an email address with a code.
- Replace the activation link with a code.
- Keep users in the registration flow.
- Reduce abandoned registrations.
- Stop mail scanners consuming activation links.
- Reduce spam registrations.
- Confirm an address before activating.
- Improve mobile signup completion.
- Verify an address on a kiosk.
- Add a code step to registration.
- Avoid emailing a clickable credential.
- Improve conversion on signup.
- Support a familiar OTP experience.
- Verify addresses for a community site.
- Reduce fake account creation.
- Confirm registration without leaving the page.
- Support an app-like signup.
- Validate an email in one session.
