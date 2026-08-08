<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Monetico — agent index

Drupal Commerce **payment gateway for Monetico** (Cybermut / CIC / Crédit Mutuel) — redirect + process
return. Depends on `commerce_payment`. Version **2.0.1**. Core `^9||^10||^11`.

**Security (correct):** the callback `response()` **verifies the Monetico HMAC-SHA1 seal** (recomputes MAC
over return fields; only accepts payment inside `computeHmac(...)==MAC`; mismatch → MAC-NOT-OK, not
processed) — public `/commerce_monetico/response` is safe. Store the Monetico security key/TPE as secrets;
HTTPS. Minor: `==` not `hash_equals` (infeasible to exploit — value is secret-derived).
