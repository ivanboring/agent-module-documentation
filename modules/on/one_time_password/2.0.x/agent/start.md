<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# One Time Password (one_time_password) — agent index

Authenticator-app two-factor login — **HOTP (RFC 4226)** and **TOTP (RFC 6238)**. Depends on core
`user` only. Configure at `/admin/config/people/one_time_password/settings`. Version **2.0.0**.
Core requirement `^10.1 || ^11`.

Routes and their access — both reviewed, both correct:
- `/user/{user}/two-factor-auth` → **`_entity_access: 'user.update'`**. The right pattern: a user
  manages their own factor, and `administer users` holders can help someone who lost a device,
  with no bespoke callback. (Contrast `twilio`, same wave, which uses a flat permission on the
  equivalent route and is exploitable as a result.)
- `/otp/{uid}/{hash}` → `_user_is_logged_in: FALSE` + `EntryForm::checkAccess`, which requires the
  uid to match one stashed in a **private tempstore** when the login attempt began, the user to
  exist and have TFA enabled, and the hash to match. Enumeration is avoided by working in uids.

`administer one time password settings` is `restrict access: true`.

**Plan these two before rollout — they are what makes 2FA deployments painful:**
1. **Recovery.** A lost device with no recovery codes means an administrator clears the factor by
   hand. Decide who can, and how they verify identity.
2. **Which roles must enrol.** A second factor that is optional for the accounts that matter is
   decoration.

Narrower than the older `tfa` module: standards-based OTP only, no pluggable method framework.
