<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Webform Promotion Code (webform_promotion_code) — agent index

Webform **element** validating a promotion/voucher code against a configured list. Requires
`webform`. Version **8.x-1.2**. Core requirement `^9 || ^10 || ^11`.

**Where it fits:** gating access or price **without a full commerce system** — a conference speaker
code, a members-only booking form, a partner discount, an invited-participants survey.

**Three things determine whether the codes are worth anything:**
1. **Single-use versus reusable is the design question.** A code that can be submitted repeatedly
   **will be**, once one recipient posts it somewhere. If uniqueness matters the element must
   **record redemption**, not only validate — check which this does before designing a campaign
   around it.
2. **Codes must be guess-resistant and rate-limited.** A short or sequential code with unlimited
   attempts is **enumerable**; core's **flood** control is what stops that, since the form otherwise
   offers unlimited free guesses.
3. **A code is a shared secret.** `hash_equals()` is the right comparison primitive — and **a list
   of live codes in exported configuration is a list in version control**.
