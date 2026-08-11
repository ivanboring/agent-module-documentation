<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Change Mail Page provides a separate, access-controlled email-change page requiring the current password.

---

Change Mail Page provides a separate page for users to change their email address — a focused form (rather than the full account-edit form) for updating one's email, useful for streamlined account-management flows.

Security: the change form (`/user/{user}/change-mail`) is gated by `_entity_access: 'user.update'` (so only the user themselves or an admin with user-update access can reach it) and requires the account's **current password** before changing the email — the correct, defensive pattern (prevents session-hijack email change / account takeover). Supports Drupal 10 and 11.

---

- Provide a dedicated email-change page.
- Offer a focused change form.
- Gate with `_entity_access: user.update`.
- Require the current password.
- Prevent session-hijack email change.
- Restrict to the user or admin.
- Streamline account management.
- Follow core user access.
- Support Drupal 10 and 11.
- Redirect to your own change page.
- Validate the password.
- Update the email securely.
- Change email safely
- Handle access control
- Support self-service.
- Secure the email change.
- Aid users.
- Protect accounts
