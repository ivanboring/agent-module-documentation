<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Email Verification — agent orientation

Gates `user_register_form` behind an email-ownership hash link.

- Version 8.x-1.x, core ^8||^9||^10.
- Routes: `/user/emailverify` (anon form), `/admin/config/people/userverify` (settings, `administer users`).
- Token = `md5($salt . $email)`; salt = config `user_email_verification_salt`, **defaults to `'email'`** (`?? 'email'` in `email_verification.module`).
- SECURITY: with the default/leaked salt the token is fully predictable for any email → an attacker can forge the verify link and register an address they do not own (verification bypass). No expiry, no nonce, static site-wide salt.
- Logic all in `email_verification.module` (`hook_form_alter`, `hook_mail`).
