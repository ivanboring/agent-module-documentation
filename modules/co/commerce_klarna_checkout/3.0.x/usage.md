<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce Klarna Checkout provides Commerce integration for Klarna Checkout, confirming order/payment status by querying Klarna's API.

---

Commerce Klarna Checkout provides a Drupal Commerce integration for Klarna Checkout — Klarna's hosted
checkout experience embedded in the store. Payment status is confirmed by querying Klarna's API
(`KlarnaManager::getOrder()`) rather than trusting client-side or notification data, and `onNotify`
processes the authoritative order state. It depends on Commerce Payment.

This API-verification model is the correct posture for a checkout/payment integration: order status comes
from an authenticated call to Klarna, so forged callbacks cannot mark an order paid. When adopting, store
the Klarna API credentials as secrets and confirm the region/environment (test vs live). Standard Commerce
concepts (orders, payments) apply.

---

- Integrate Klarna Checkout with Commerce.
- Embed Klarna's hosted checkout.
- Confirm order status via Klarna's API.
- Query getOrder for authoritative state.
- Process onNotify with real state.
- Reject forged callbacks (API-verified).
- Depend on Commerce Payment.
- Store Klarna credentials as secrets.
- Confirm test vs live environment.
- Create Commerce payments.
- Trust the authenticated API, not callbacks.
- Map Klarna state to payment.
- Handle the checkout flow.
- Reconcile Klarna orders.
- Verify order status server-side.
- Support Klarna billing.
- Switch environments.
- Integrate Klarna checkout pane.
- Confirm payment via API.
- Process Klarna orders.
