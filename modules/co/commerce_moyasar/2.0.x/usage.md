<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce Moyasar integrates the Moyasar payment gateway (Saudi Arabia) with Drupal Commerce.

---

Commerce Moyasar provides Commerce integration for Moyasar — a payment gateway for Saudi Arabia — the shopper pays via Moyasar and returns with a payment id.

Security: `onReturn()` re-fetches the payment SERVER-SIDE from Moyasar's API (Basic auth) by id and completes only on the API status (`paid`/`authorized`/`captured`) — safe against forged-callback completion. Note (defense-in-depth): it does NOT bind the fetched payment's `metadata.order_id` to the order and trusts the API-returned amount rather than the order total, so a payment-id-switch/amount-mismatch is theoretically possible (still requires a genuine paid transaction). Store the Moyasar API credentials securely (env-backed), never committed. Depends on `commerce_payment`; supports Drupal per ^10 || ^11.

---

- Integrate the Moyasar gateway.
- Serve Saudi Arabia.
- Redirect/charge via the provider.
- Complete the order after payment.
- `onReturn()` re-fetches the payment SERVER-SIDE from Moyasar's API (Basic auth) by id and completes only on the API status (`paid`/`authorized`/`captured`) — safe against forged-callback completion.
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
- Integrate Moyasar.
- Charge customers.
- Reconcile orders.
