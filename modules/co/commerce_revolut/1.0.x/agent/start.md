<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Revolut — agent index

**Revolut payment-link gateway** for Drupal Commerce. Depends on `commerce_payment`, `commerce_order`. Version
**1.0.0**. Core `^10||^11`.

Payment gateway — **positive**: `onReturn()` **re-fetches the Revolut order from the API server-side** and sets
state from the API's `state` (not from browser-supplied params — no self-reported "paid"); `onNotify()` is a no-op
(fulfillment via the verified return). Store the API key/secret as secrets (env/Key), HTTPS; verify webhook
signatures if enabled later.
