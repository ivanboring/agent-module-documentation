<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Authenticator Login (alogin) — agent index

TOTP **two-factor authentication**. Setup at `/user/{user}/2fa`, verification at `/2fa`,
configuration at `/admin/config/alogin/config`. Version **2.1.8**. Core `^9.5 || ^10 || ^11`.
Permissions: `administer alogin`, `alogin bypass enforced redirect`.

**Examine the enforcement mechanism before treating this as a second factor.**
`alogin_form_alter()` removes core's submit handler from **`user_login_form` only** and replaces it
with an **AJAX callback** that decides between `/2fa` and `user_login_finalize()`.

Same shape as `stop_admin` (wave 83). Drupal authenticates by other paths: `user_login_block`,
core's `POST /user/login?_format=json` (whenever `serialization` is on), authentication providers
like `basic_auth`, and the **one-time reset link**, which calls `user_login_finalize()` directly in
`UserController::resetPass()`. **Check which are routable on the target site.**

**Two further observations from source:**

1. **No flood control on verification** — `validateForm()` calls `check($code)` with no attempt
   counter and no `flood` service. A six-digit TOTP with unlimited attempts is brute-forceable.
2. **The AJAX callback logs `'User @name logged in successfully.'` in the FAILURE branch**, with an
   unreplaced placeholder and no variables — so failed logins write success lines to watchdog.

`/2fa` being `_access: 'TRUE'` is **correct** — the user is mid-login and not yet authenticated.