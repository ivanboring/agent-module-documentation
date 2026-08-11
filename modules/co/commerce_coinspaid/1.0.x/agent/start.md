<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CoinsPaid Commerce — agent index

**Drupal Commerce CoinsPaid crypto gateway** (off-site). Version **1.0.2**. Core `^10||^11`. Project `coinspaid`.

Positive: callback verifies HMAC-SHA512 `X-Processing-Signature` (throws on mismatch) + uses server-side order total. Keys env-backed. Depends on `commerce_payment`.