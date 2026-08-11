<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
CM.com Payment integrates the CM.com payment provider with Drupal Commerce (server-verified).

---

CM.com Payment is a payment module for the CM.com payment provider — a Drupal Commerce off-site payment gateway that redirects the shopper to CM.com to pay and reconciles the order afterwards.

Security: on the return/notify path the gateway **re-fetches the order status server-side from CM.com's API** (`GET merchants/{merchant_key}/orders/{order_ref}`) using the merchant key, and only completes the payment when CM's own API reports success — it does not trust a client-supplied status. Store the merchant/API credentials securely (env-backed). Depends on `commerce_payment`; supports Drupal 10 and 11.

---

- Integrate the CM.com payment provider.
- Provide an off-site Commerce gateway.
- Redirect the shopper to CM.com.
- Reconcile the order after payment.
- Re-fetch order status server-side from CM.
- Complete only on CM's API success.
- Not trust a client-supplied status.
- Store credentials securely (env-backed).
- Depend on `commerce_payment`.
- Support Drupal 10 and 11.
- Handle payment notifications.
- Verify payments server-side.
- Process payments
- Handle CM.com
- Support checkout.
- Confirm on the server.
- Reconcile orders.
- Keep credentials secure
