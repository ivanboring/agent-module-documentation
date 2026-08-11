<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce Omise integrates the Omise payment gateway (Thailand / Japan) with Drupal Commerce.

---

Commerce Omise provides Commerce integration for Omise — a payment gateway for Thailand / Japan — the shopper pays via Omise and Omise posts a webhook event. WARNING: the webhook is unauthenticated.

Security: **as shipped (8.x-1.x-dev) the webhook is UNVERIFIED** — `Omise::onNotify()` reads `data.id` and `data.status` straight from the POST body and marks the matching payment `completed` when `status === 'successful'`, with NO signature check and NO server-side `OmiseCharge::retrieve()` re-fetch, on the public `commerce_payment.notify` route (`_access: 'TRUE'`). A buyer who knows their own charge id can POST `{"data":{"id":"…","status":"successful"}}` and get the order fulfilled without paying. DO NOT use in production without re-fetching the charge server-side (`OmiseCharge::retrieve($id)`) and completing only on the API's `successful` status. Store the Omise API credentials securely (env-backed), never committed. Depends on `commerce_payment`; supports Drupal per ^10 || ^11.

---

- Integrate the Omise gateway.
- Serve Thailand / Japan.
- Redirect/charge via the provider.
- Complete the order after payment.
- **as shipped (8.
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
- Integrate Omise.
- Charge customers.
- Reconcile orders.
