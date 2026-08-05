<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Login with email only removes the username as a login option: the login form's single identifier box accepts an email address and nothing else.

---

This is one of the smallest useful modules in the campaign — four files, one of which is the licence. All the behaviour lives in `login_onlyemail.module`, which alters the user login form so the identifier field is labelled and validated as an email address, and resolves that address to an account. There is no configuration form, no permission, no schema and no service; enabling it is the entire setup. That simplicity is also its limitation: the change is site-wide and unconditional, so there is no per-role or per-path exemption, and a site that still wants usernames to work at login needs a different module (`email_registration` accepts either). Because it only changes the *login* form, usernames continue to exist and are still shown wherever Drupal displays an account name — this module does not make the email address the display name.

---

- Let users log in with only their email address.
- Remove the "username or email" ambiguity from the login form.
- Match the login experience users expect from other services.
- Avoid users forgetting a username they never chose.
- Simplify support requests about login identifiers.
- Pair with automatic username generation on registration.
- Reduce login-form friction on a consumer-facing site.
- Enforce email as the sole credential identifier.
- Keep usernames for display while dropping them from login.
- Standardise login across several sites in an estate.
- Cut a field from a mobile login form.
- Prevent username enumeration through the login box.
- Migrate a site to email-first authentication.
- Deploy a login change with no configuration step.
- Provide a predictable identifier for password-reset flows.
- Align Drupal login with an external CRM keyed on email.
- Remove a source of user error at sign-in.
- Test whether email-only login suits a site, reversibly.
