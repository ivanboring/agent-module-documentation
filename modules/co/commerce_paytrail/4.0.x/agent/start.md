<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Paytrail — agent index

Integrates **Paytrail** (Finnish payment service) with Drupal Commerce (token/redirect gateway). Depends on
`commerce`. Version **4.0.0-beta3**. Core `^10||^11`.

**Security (correct):** the return/notify handler **validates the Paytrail HMAC signature**
(`validateSignature(getSecret(), query)` via the Paytrail SDK `Signature`) — forged callbacks are rejected.
Store the Paytrail merchant secret as a **secret**; HTTPS; confirm account mode.
