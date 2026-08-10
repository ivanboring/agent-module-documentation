<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Merchant Warrior — agent index

**Merchant Warrior payment gateway** for Drupal Commerce (Payframe / Direct API). Depends on `commerce`,
`commerce_payment`, `rest`. Version **1.0.3**. Core `^9.5||^10||^11`.

Payment gateway — **positive**: outbound requests are **HMAC-SHA256 signed** with the API passphrase and cards are
**verified server-side via the Direct API `verifyCard`** (outcomes from authenticated API responses, not a
forgeable callback); Payframe tokenizes card data. Store merchant UUID/API key/passphrase as secrets (env/Key);
HTTPS. No access role.
