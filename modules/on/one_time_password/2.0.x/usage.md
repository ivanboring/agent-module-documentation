<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
One Time Password adds authenticator-app two-factor login to Drupal, implementing HOTP (RFC 4226) and TOTP (RFC 6238) — the codes produced by Google Authenticator, Aegis, 1Password and every other standards-compliant app.

---

Drupal core has no second factor, so every site that needs one reaches for contrib, and the long-standing answer was the `tfa` module. This is a more recent, narrower take: standards-based one-time passwords only, no pluggable framework of alternative methods. Version **2.0.0** on core `^10.1 || ^11`, depending only on core `user`. The enrolment route is `/user/{user}/two-factor-auth`, gated with **`_entity_access: 'user.update'`** — which is the correct pattern, since it lets a user manage their own second factor and lets `administer users` holders help someone who has lost a device, without a bespoke access callback. The verification step lives at `/otp/{uid}/{hash}` behind `_user_is_logged_in: FALSE` and a custom access check, and that check reads well: the uid must match one stashed in a private tempstore when the login attempt began, the user must exist and have TFA enabled, and the hash must match a value derived from the account. Two things to plan for rather than discover, because they are what makes 2FA rollouts painful: **recovery**, since a lost device without recovery codes means an administrator must clear the factor manually, and **which roles are required to enrol**, since a second factor that is optional for the accounts that matter is decoration.

---

- Add two-factor login to a site.
- Require 2FA for administrators.
- Support Google Authenticator.
- Meet a security policy requirement.
- Protect privileged accounts.
- Use TOTP codes at login.
- Enrol a device by QR code.
- Reduce risk from stolen passwords.
- Support any standards-based authenticator app.
- Let a user manage their own second factor.
- Let an admin reset a lost factor.
- Harden an editorial team's accounts.
- Meet an insurance or audit requirement.
- Add 2FA without a plugin framework.
- Protect a site with financial data.
- Enforce 2FA per role.
- Support offline code generation.
- Replace SMS-based codes.
