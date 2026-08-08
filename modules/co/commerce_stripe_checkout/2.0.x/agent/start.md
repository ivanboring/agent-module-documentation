<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Stripe Checkout — agent index

Drupal Commerce **payment gateway** for **Stripe Checkout** (hosted checkout). Webhook controller
verifies via `Stripe\Webhook::constructEvent()` with the `Stripe-Signature` header + signing secret,
rejecting bad signatures. Depends on `commerce`, `commerce_order`, `commerce_cart`, `commerce_payment`.
Version **2.0.0**. Core `^10||^11`.

**Set the webhook signing secret for production** — leaving it **empty disables verification** (module
warns in UI + logs; forged 'paid' events would be accepted). Store secret key + webhook secret as
secrets. With the secret set, forgeries are rejected.
