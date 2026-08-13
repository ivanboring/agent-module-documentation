<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# TFA Email Support — setup, OTP handling & security

## Enable
Requires the `tfa` module configured (TFA enabled at `/admin/config/people/tfa`). Enable `tfa_email_support`; the Email OTP validation/setup plugins are then selectable in TFA.

## Enrolment (TfaSetup: EmailSetup)
Two steps: choose the account email or a custom email -> a verification code (via `random_int()`) is sent (`send_setup_otp`) -> enter the code. On success the email is written to `tfa.settings.user.{uid}` (`validation_plugins[] = tfa_email_support`, `data.tfa_email_support.email`).

## Login (TfaValidation: Email)
`begin()` generates a 6-digit OTP, stores it in `state` (`tfa_email_support_otp_{uid}` with `expiry = now + 120s`) and mails it (`send_otp`). The form shows a masked recipient and a resend control gated by a 120s cooldown (`tfa_email_support_last_sent_{uid}`). `validateForm()` accepts when the submitted code `===` the stored code. Success deletes both state keys.

## Email templates
`/admin/config/people/tfa/email-templates` (perm `administer site configuration`) edits subjects/bodies for OTP, setup and backup-code mails. Tokens: `@otp @username @user_email @site_name @site_url @date @time @ip_address @user_agent @expiry_minutes @support_email @login_url` (+ `@backup_codes`). `use_html_templates` switches to HTML (module `templates/tfa-email-{otp,setup,backup_codes}.html.twig` or a generated layout). `hook_mail_alter` applies configured `custom_headers`, `reply_to_email`, `email_priority`.

## Security review notes
- **Weak login OTP RNG:** `Email::begin()` uses `str_pad(rand(0,999999),...)` (Email.php:233) — `rand()` is not a CSPRNG. The setup path uses `random_int()` (EmailSetup.php:429). Recommend switching login OTP generation to `random_int()`.
- **Comparison:** OTP checked with `!==` (Email.php:200, EmailSetup.php:361) — not constant-time; low risk for a short-lived 6-digit code, and TFA core supplies flood/attempt limiting.
- OTPs are stored plaintext in `state` with short expiries and are **not** logged (debug log statements are commented out).
- `ready()` `unserialize($v, ['allowed_classes' => FALSE])` — safe.
