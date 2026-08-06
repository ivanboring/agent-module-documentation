<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Authenticator Login adds TOTP two-factor authentication — the six-digit code from an authenticator app — to Drupal login.

---

Setup is per user at `/user/{user}/2fa`, where a QR code enrols the account, and an event subscriber can require users to complete enrolment after login. Verification happens on a `/2fa` form after the password step, and a `alogin bypass enforced redirect` permission exists for accounts that should not be forced through enrolment.

**The enforcement mechanism is the thing to examine, because it determines whether the 2FA actually holds.** `alogin_form_alter()` removes core's submit handler from `user_login_form` and replaces it with an **AJAX callback** that decides whether to redirect to `/2fa` or call `user_login_finalize()` directly:

```php
if ($form_id == 'user_login_form') {
  unset($form['#submit'][0]);
  $form['actions']['submit']['#ajax'] = ['callback' => 'alogin_ajax_callback', …];
}
```

That is a gate on one form id, which is the same shape as `stop_admin` (wave 83) — and Drupal authenticates by several paths that are not that form: `user_login_block`, core's `POST /user/login?_format=json` when `serialization` is enabled, authentication providers such as `basic_auth`, and the one-time login link from `/user/password`, which calls `user_login_finalize()` directly in `UserController::resetPass()`. **Verify which of those are routable on your site before treating this as a second factor**, because a 2FA that the password-reset flow walks past is not one.

Two further observations from the code. **There is no flood control on code verification** — `validateForm()` calls `$this->authenticator->check($code)` with no attempt counter and no use of Drupal's `flood` service, and a six-digit TOTP with a validity window is brute-forceable given unlimited attempts. And the AJAX callback logs `'User @name logged in successfully.'` **in the failure branch**, with the placeholder never replaced and no variables passed, so a failed login writes a success line with a literal `@name` into watchdog — a small thing that makes the audit log actively misleading.

The `/2fa` route is `_access: 'TRUE'`, which is correct: the user is mid-login and not yet authenticated, so a permission check cannot apply there.

---

- Add TOTP two-factor authentication.
- Enrol a user with a QR code.
- Require 2FA after login.
- Exempt a role from enforced enrolment.
- Verify a six-digit code at login.
- Check which login paths bypass the gate.
- Test POST /user/login?_format=json.
- Test the password-reset one-time link.
- Check whether basic_auth is enabled.
- Add flood control to code verification.
- Limit brute-force attempts on a TOTP code.
- Notice the misleading success log line.
- Audit watchdog for false login-success entries.
- Plan a second factor that covers all entry points.
- Compare with other Drupal 2FA modules.
- Restrict who may administer the module.
