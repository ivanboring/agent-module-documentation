<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Pwned Passwords (pwned_passwords) — agent index

Checks passwords against **Have I Been Pwned**. Settings at
`/admin/config/people/pwnedpassword` behind `administer pwned_passwords`
(`restrict access: true`). Version **8.x-1.4**. Core requirement `^10.6 || ^11`
(declares a stale `php: 7.1`).

**The privacy design is correct — say this plainly, because "checks passwords against a third-party
service" invites the opposite assumption.** The `esolitos/pwnedpasswords` library uses the
**k-anonymity range API**: only the **first 5 hex characters** of the uppercase SHA-1 are sent to
`api.pwnedpasswords.com/range/`, and the full-hash comparison happens locally. Neither the plaintext
nor the complete hash leaves the server. Verified live: `password` → 52,372,427 hits.

**Three things to know before deploying:**
1. **Shipped defaults block nothing.** `threshold_error: 0`, `error_blocks_submit: false` — it
   warns. A site that installed it and never opened the settings form is enforcing no policy.
2. **`validate_all_passwords` is broken in this release.** The global element validator's condition
   is inverted against its own comment (`!== 'current_pass'` → return), so it checks **only
   `current_pass`** and **never a new password** — verified live. The per-form path
   (`user_register_form`, `user_form`, optionally `user_login_form`) is a different function and is
   correct.
3. **Synchronous outbound request, 2s timeout, bare Guzzle client** that bypasses
   `http_client_factory` — no proxy settings, no middleware. Fails **open** with a warning message.
   Weigh this before enabling it on the **login form**, where it lands on the most-attacked path.

Also: `isPasswordPwned()`'s default `$pwned_threshold = 0` makes `0 <= 0` true, so the public
service API reports a clean password as compromised. Callers must pass ≥ 1.
