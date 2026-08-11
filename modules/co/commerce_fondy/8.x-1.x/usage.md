<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Fondy Commerce Payment Gateway adds a Fondy off-site gateway with signature- and amount-checked callbacks.

---

Fondy Commerce Payment Gateway is an off-site Drupal Commerce payment gateway for Fondy — the shopper is redirected to Fondy to pay and the order is completed on return/notification.

Security: both `onReturn` and `onNotify` call `isPaymentValid()`, which (1) verifies the Fondy response **signature** (`getSignature($response, secret_key)` compared to the callback's signature) and (2) checks the **callback amount equals the order amount**, completing the payment with the **order's own total** — the correct defensive pattern (no completion on an invalid signature or amount mismatch). Store the Fondy merchant id/secret securely (env-backed). Depends on `commerce_payment` and `commerce`; supports Drupal 9, 10, and 11.

---

- Provide a Fondy off-site gateway.
- Redirect the shopper to Fondy.
- Complete the order on return/notify.
- Verify the Fondy response signature.
- Check the callback amount vs the order.
- Complete with the order's own total.
- Reject invalid signature/amount.
- Store the merchant id/secret securely.
- Depend on `commerce_payment` and `commerce`.
- Support Drupal 9, 10, and 11.
- Handle notifications.
- Verify payments.
- Process payments
- Verify callbacks
- Support checkout.
- Confirm securely.
- Handle Fondy.
- Keep credentials secure
