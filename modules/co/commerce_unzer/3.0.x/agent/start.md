<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Unzer — agent index

**Unzer off-site payment gateway** for Drupal Commerce. Depends on `commerce_payment`. Version **3.0.0-alpha1**.
Core `^10||^11`.

Payment gateway — **positive**: `onReturn()` **re-fetches the payment from the Unzer API server-side**
(`fetchPayment`) to determine the outcome (not forgeable request params); `onNotify()` webhook implemented. Store
the Unzer keys as secrets (env/Key), HTTPS.
