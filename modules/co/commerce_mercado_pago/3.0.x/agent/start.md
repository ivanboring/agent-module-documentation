<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Mercado Pago — agent index

**Mercado Pago payment gateway** for Drupal Commerce (Checkout Pro). Depends on `commerce_payment`. Version
**3.0.0-rc3**. Core `^9||^10||^11`.

Payment gateway — **positive**: `onReturn()` **verifies the payment with the Mercado Pago API before trusting the
return query params**; an `onNotify()` IPN webhook is implemented — outcome comes from MP's authenticated API, not
forgeable request data. Store the access token as a secret (env/Key), HTTPS.
