<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce KNET integrates the KNET payment gateway (Kuwait) with Drupal Commerce.

---

Commerce KNET provides Commerce integration for KNET — a payment gateway for Kuwait — the shopper pays via KNET and returns with an AES-encrypted `trandata` response.

Security: the return handler decrypts the KNET `trandata` with the merchant's terminal resource key (unforgeable without the key), requires `result === 'CAPTURED'`, checks the returned amount equals `$order->getTotalPrice()`, and records the payment with the order's own total — a correct, defensive pattern. Store the KNET API credentials securely (env-backed), never committed. Depends on `commerce_payment`; supports Drupal per ^10 || ^11.

---

- Integrate the KNET gateway.
- Serve Kuwait.
- Redirect/charge via the provider.
- Complete the order after payment.
- the return handler decrypts the KNET `trandata` with the merchant's terminal resource key (unforgeable without the key), requires `result === 'CAPTURED'`, checks the returned amount equals `$order->getTotalPrice()`, and records the payment with the order's own total — a correct, defensive pattern.
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
- Integrate KNET.
- Charge customers.
- Reconcile orders.
