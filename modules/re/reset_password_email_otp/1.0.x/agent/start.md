<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Reset Password Email OTP — agent index

Password reset via an **email OTP** (request → OTP by email → set new password). Depends on core `block`,
`user`. Provides permissions + a block. Version **1.0.4**. Core `^8.8||^9||^10||^11`.

Good: **CSPRNG** OTP (`random_int`), configurable length, wrong-attempt limit. **SECURITY CAVEAT:** the OTP
**never expires** (`time` used only for ordering — no TTL) and is **not single-use** (row not deleted after
reset) → a leaked/intercepted OTP is **replayable indefinitely** (account takeover window). Compare is `!=`
(non-constant-time). Fix: short TTL + delete-after-use + `hash_equals()`. See `security.md`.
