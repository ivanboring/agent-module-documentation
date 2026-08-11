<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce Imoje integrates the imoje payment gateway (Poland) with Drupal Commerce.

---

Commerce Imoje provides Commerce integration for imoje — a payment gateway for Poland — the shopper is redirected to imoje (ING) to pay and the order is completed on notification.

Security: the IPN handler (`IPNHandler::process`) validates the `X-Imoje-Signature` header (sha256 of the payload + service key) FIRST and throws on mismatch before completing — a correct, defensive pattern. Store the imoje API credentials securely (env-backed), never committed. Depends on `commerce_payment`; supports Drupal per ^10 || ^11.

---

- Integrate the imoje gateway.
- Serve Poland.
- Redirect/charge via the provider.
- Complete the order after payment.
- the IPN handler (`IPNHandler::process`) validates the `X-Imoje-Signature` header (sha256 of the payload + service key) FIRST and throws on mismatch before completing — a correct, defensive pattern.
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
- Integrate imoje.
- Charge customers.
- Reconcile orders.
