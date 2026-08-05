<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Resend registration / welcome email adds a bulk action to the people admin screen that re-sends the account activation or welcome mail to selected users — the standard fix for "the invitation never arrived".

---

Drupal sends the registration mail once, at account creation. When it bounces, lands in spam, or the account was created before mail was configured, core offers no way to send it again short of a password reset, which is a different message with different wording. This module supplies the missing action. `src/Plugin` provides the user action so it appears in the People screen's bulk-operations dropdown, `src/Form/UserMultipleResendEmail` is the confirmation step at `/admin/user/resend-email`, and `src/Hook` plus `config/install` wire in defaults and let the mail type be chosen. The route requirement is worth noting: `_permission: 'administer users+resend account emails'` — the `+` is Drupal's OR syntax, so either permission suffices. The module's own permission, `resend account emails`, is marked **`restrict access: true`**, which is right, because re-sending an activation mail can regenerate a one-time login link for an account. Dependencies are core `user` only, and the release requires core `^10.2 || ^11`.

---

- Re-send a welcome email that never arrived.
- Bulk re-invite a batch of imported users.
- Recover from a period when the site could not send mail.
- Re-send activation mail after fixing SMTP.
- Onboard users migrated from another system.
- Trigger the welcome message for pre-created accounts.
- Avoid using password reset as a substitute invitation.
- Give a support team a self-service fix for missing mail.
- Re-send to a single user from the People screen.
- Restrict resending to a dedicated permission.
- Re-invite users after a domain change.
- Reach users whose mail was quarantined.
- Choose which account mail type to resend.
- Handle onboarding for a cohort of new staff.
- Confirm the action before mail goes out.
- Combine with a mail-logging module to verify delivery.
- Reduce helpdesk tickets about missing invitations.
- Re-send after correcting a user's email address.
