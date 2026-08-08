<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# REST Password Reset (rest_password_reset) — agent index

**REST endpoints** for password reset / username retrieval / reset completion — for headless front
ends. Version **1.1.5**. Resources: `ResetLink`, `Username`, `PasswordReset`.

**Security done right (positive):** generic anti-enumeration message ('If there is an active user…')
for existing and non-existing emails; reset code compared with **`hash_equals()`** against core
`user_pass_rehash()`; reset-timeout honoured; **5-minute per-user flood** check. Minor caveat: email
is a **GET URL parameter** → lands in server/proxy logs and browser history (a POST body would
avoid that).