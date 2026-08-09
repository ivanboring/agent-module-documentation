<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Decoupled Stripe — agent index

Integrates **Stripe with Commerce decoupled (headless) checkout** (standard + recurring gateways). Depends on
`commerce_payment`. Version **8.x-1.4**. Core `^10.1||^11`.

Trust boundary **correct** (verified): does **not** trust a client status — `createPayment()` calls
**`PaymentIntent::retrieve()`** (Stripe secret key) and sets state from the **authoritative** Stripe status;
intent amount is server-side. Store the Stripe **secret key** as a secret; HTTPS. No access role.
