<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# SIBS API Commerce — agent index

**SIBS payment gateway for Drupal Commerce**. Depends on `commerce_payment`, `sibs_api`. Version **1.0.6**. Core
`^9||^10||^11`.

Payment gateway — **fulfillment is API-verified** (positive): `onReturn`/status endpoint **re-fetch
`getPaymentStatus` from SIBS server-side** and complete only on the API's `Success` (no forged fulfillment).
**Caveat**: the status route `/sibs-api-commerce/payment-status/{order_id}` is **public** and keyed only by
guessable `order_id` with **no ownership check** → payment-status info disclosure (add an access check). Credentials
as secrets (env/Key), HTTPS.
