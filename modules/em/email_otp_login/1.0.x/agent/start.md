<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Email OTP Login — agent index

**Passwordless login via a 6-digit code emailed to the user**. Depends on core `user`. Version **1.0.7**. Core
`^10.3||^11`.

**SECURITY (campaign finding, Danger 4 — do NOT use as-is)** — `/otp-email` + `/validate-otp/{email}` are **public
(`access content`)**, the OTP is stored raw in State with **no expiry**, and verification has **no rate-limiting, no
attempt limit, and no invalidation on failed guesses** (deleted only on success). An anonymous attacker can
**brute-force any account's 6-digit OTP → takeover**. Keep disabled until it flood-limits `/validate-otp` +
invalidates after N failures + adds a short expiry.
