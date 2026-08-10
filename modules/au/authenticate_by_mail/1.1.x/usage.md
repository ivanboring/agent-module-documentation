<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Authenticate by Mail requires users to log in with a mailed link.

---

Authenticate by Mail **replaces the standard password login with a mailed one-time login link** — the user
enters their email and receives a link that logs them in (passwordless), removing passwords from the login flow.
It depends on core User.

Use it for passwordless email-link login. It is an **authentication** feature and it is implemented **correctly**:
it reuses **Drupal core's one-time-login mechanism** — the link hash is validated with `hash_equals($hash,
user_pass_rehash($user, $timestamp))` (core's CSPRNG-derived, per-user hash), the link **expires**, and it is
effectively **single-use** (the check rejects timestamps before the user's last-login time, so a used link stops
working). This is the same well-tested path as core's password-reset link. Operational notes: the login link is
a **capability** (anyone who receives it can log in as that user), so it must go only over your secure mail path;
and removing passwords means **email deliverability/security becomes your auth security** — protect the mailbox/
mail channel accordingly. It layers on core authentication. Configure the mailed-login flow.

---

- Replace password login with a mailed link.
- Log in passwordlessly.
- Remove passwords from login.
- Depend on core User.
- REUSE core's one-time-login mechanism.
- Validate with hash_equals + user_pass_rehash.
- Expire the link + make it single-use (last-login check).
- Be the same secure path as core password reset.
- TREAT the login link as a capability (secure mail only).
- Know email security becomes auth security.
- Layer on core authentication.
- Configure the mailed-login flow.
- Handle mail login.
- Log users in.
- Configure the flow.
- Authenticate by mail.
- Handle the link.
- Email login links.
- Secure the mail channel.
- Provide mailed-link login.
