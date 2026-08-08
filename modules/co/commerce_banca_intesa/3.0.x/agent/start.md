<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Banca Intesa — agent index

A Drupal Commerce **offsite-redirect payment gateway for Banca Intesa Serbia** (NestPay/Payten). Depends on
`commerce_order`, `commerce_payment`. Version **3.0.0-alpha10**. Core `^10||^11`.

Trust boundary **correct**: `onReturn()` checks merchant_id, verifies the bank **signature** via `isHashValid()`
(`base64(sha512(fields . store_key))`; forging needs the **store_key** secret), requires `ProcReturnCode=='00'`,
records `$order->getBalance()` (server-side amount). **Danger 1** deviation: signature compare is `!=`
(non-constant-time → use `hash_equals()`); hashed fields taken from request `HASHPARAMS` (brittle). Store
`store_key` as a secret; HTTPS. See `security.md`.
