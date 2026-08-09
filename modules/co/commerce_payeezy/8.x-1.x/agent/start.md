<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Payeezy — agent index

A Drupal Commerce **Payeezy (First Data) payment gateway** (hosted + on-site). Depends on `commerce`,
`commerce_payment`, `commerce_order`. Version **8.x-1.2**. Core `^8||^9||^10||^11`.

**SECURITY CAVEAT:** `HostedGateway::onReturn()` recomputes an HMAC but, on `x_response_code=1` with a
**non-matching** hash, the `else` branch **does not throw** — the order return completes with **no verified
payment** (unpaid-order/payment bypass). Amount is server-side (`getTotalPrice()`). Fix: **throw** on mismatch
+ use `hash_equals()` (currently `==`). Store `response_key` as a secret. See `security.md`.
