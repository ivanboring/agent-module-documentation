<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Checkout Link — agent index

Generates a **shareable, HMAC-signed link that lets a customer resume/complete checkout for an order**
(abandoned cart / guest / staff-created — no login). Depends on `commerce_order`, `commerce_cart`. Version
**8.x-1.5**. Core `^9.1||^10||^11`.

**Security (correct):** the link carries an **HMAC keyed with the site's secret hash salt**
(`Crypt::hmacBase64(ts.order_id.changed_time, Settings::getHashSalt())`), validated with **`hash_equals()`**
+ timestamp/changed-time scoping — **unforgeable** without the salt. A valid link **grants that order's
checkout** — treat links as sensitive (HTTPS, right recipient). No access role beyond the signed link.
