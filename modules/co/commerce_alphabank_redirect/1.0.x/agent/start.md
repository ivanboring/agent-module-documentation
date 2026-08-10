<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Alphabank — agent index

**Off-site redirect payment gateway for Alpha Bank (Greece)** for Drupal Commerce. Depends on `commerce`,
`commerce_payment`. Version **1.0.3**. Core `^9||^10||^11`.

Payment gateway — **positive**: the callback computes a **sha256 digest keyed with the merchant `shared_secret`**
and rejects mismatches (no forged "paid" callback without the secret); mismatch → non-fulfilling `Unvalidated`
record; only secret-valid `CAPTURED`/`AUTHORIZED` completes. Keep the `shared_secret` secret; HTTPS. (Minor: `!==`
compare, negligible.)
