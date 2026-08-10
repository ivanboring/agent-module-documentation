<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Viva Wallet — agent index

A **Viva Wallet payment gateway for Drupal Commerce**. Depends on `commerce`, `commerce_payment`. Version
**1.1.1**. Core `^9||^10||^11||^12`.

E-commerce/payment — **authoritative**: the webhook carries only a transaction id; the controller **re-fetches
the transaction from Viva's API** (`transaction_service->get`) before setting state (no forged-webhook
fulfillment). `verify_hook` endpoint is Viva's standard verification. Credentials as secrets, HTTPS. No access
role.
