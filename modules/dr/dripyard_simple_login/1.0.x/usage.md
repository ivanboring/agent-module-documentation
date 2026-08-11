<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Dripyard Simple Login replaces default login routes with magic link authentication.

---

Dripyard Simple Login **replaces the login form with magic-link (passwordless) authentication** — instead of
a username/password form, users enter their email/username and receive a one-time login link; clicking it logs
them in. It does this by **repurposing core's password-reset functionality**. It depends on core User.

Use it for passwordless login. It is an **authentication** feature, and it is built on the right foundation: the
magic link uses core's password-reset route (`user.reset.login`), and the module's controller **delegates to
core's `resetPassLogin()`** — so the link is validated by core's secure one-time-login token mechanism
(`user_pass_rehash()` HMAC over uid/timestamp/last-login/password-hash, `hash_equals` comparison, time-limited
expiry, single-use). It also **reuses core's password-reset flood protection** (`user.password_reset_ip` limits)
to rate-limit link requests. Security notes inherent to magic-link auth: account security becomes **email-account
security + link delivery** — anyone who can read the user's inbox or intercept the link can log in — so ensure TLS
on mail delivery, an appropriately short reset-link timeout, and consider it alongside (not as a downgrade from)
other factors for privileged accounts. Enable it to switch to magic-link login.

---

- Replace login with magic links.
- Send a one-time login link by email.
- Repurpose core password-reset.
- Depend on core User.
- Delegate to core resetPassLogin() (secure token).
- Validate via user_pass_rehash HMAC + hash_equals + expiry (single-use).
- Reuse core's password-reset flood control (user.password_reset_ip).
- REDUCE account security to email + link delivery (inherent to magic-link).
- Ensure TLS mail delivery + a short reset-link timeout.
- Consider other factors for privileged accounts.
- Enable it for magic-link login.
- Handle passwordless login.
- Send login links.
- Log users in.
- Configure the login.
- Authenticate users.
- Handle the link.
- Rate-limit requests.
- Deliver links securely.
- Provide magic-link login.
