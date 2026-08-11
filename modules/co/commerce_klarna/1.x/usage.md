<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce Klarna integrates the Klarna payment gateway with Drupal Commerce.

---

Commerce Klarna provides Commerce integration for Klarna — the customer pays via Klarna and the order is finalized through Klarna's authenticated Order Management API.

Security: `onNotify()` is a no-op and completion happens via authenticated (HTTP Basic) server-side Klarna API calls (`/payments/v1/authorizations`, `/ordermanagement/v1/orders`) — the site never trusts a request-body status; its own routes require `commerce_order.update`. Store the Klarna API credentials securely (env-backed), never committed. Depends on `commerce_payment`; supports Drupal per ^10 || ^11.

---

- Integrate the Klarna gateway.
- Serve the store.
- Redirect/charge via the provider.
- Complete the order after payment.
- `onNotify()` is a no-op and completion happens via authenticated (HTTP Basic) server-side Klarna API calls (`/payments/v1/authorizations`, `/ordermanagement/v1/orders`) — the site never trusts a request-body status; its own routes require `commerce_order.
- Use Drupal Commerce payment.
- Store credentials securely (env-backed).
- Never commit credentials.
- Depend on `commerce_payment`.
- Support ^10 || ^11.
- Handle checkout.
- Process payments.
- Confirm the payment.
- Handle notifications.
- Support Commerce.
- Integrate Klarna.
- Charge customers.
- Reconcile orders.
