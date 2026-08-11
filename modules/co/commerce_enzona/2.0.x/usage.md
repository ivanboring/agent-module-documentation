<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce Enzona integrates the Enzona payment gateway (Cuba) — but its public webhook is unauthenticated.

---

Commerce Enzona integrates the Enzona payment gateway with Drupal Commerce for processing payments in Cuba — redirecting the shopper to Enzona and reconciling the order on return.

**Security warning (as shipped, 2.0.4):** the notify route `/commerce_enzona/webhook` is `_access: 'TRUE'` (public) and `EnzonaPaymentController::webhookAction()` marks a payment **completed** and places the order based solely on a `status` field in the request body — no signature/HMAC, no `Authorization`, and no server-side re-fetch of the real status from Enzona. A shopper who knows their own `transaction_uuid` can POST `{"transaction_uuid":"…","status":"completed"}` and have the order fulfilled without paying. It also exposes public debug routes (`/commerce_enzona/debug`, `/test-direct`, `/full-debug`, all `_access: 'TRUE'`) that trigger authenticated Enzona API calls, leak the OAuth token prefix, and can create a live payment on the merchant account. **Do not use in production without verifying the webhook (signature + server-side status re-fetch) and removing/gating the debug routes.** Depends on `commerce`, `commerce_payment`, `commerce_order`, `commerce_checkout`; supports Drupal 10 and 11.

---

- Integrate the Enzona gateway (Cuba).
- Redirect the shopper to Enzona.
- Reconcile the order on return.
- Process payments in Cuba.
- WARNING: public unauthenticated webhook.
- Complete payment from a request `status`.
- Lack signature/HMAC verification.
- Lack server-side status re-fetch.
- Expose public debug/test routes.
- Leak the OAuth token prefix (debug).
- Require hardening before production.
- Depend on `commerce`/`commerce_payment`/`commerce_order`/`commerce_checkout`.
- Support Drupal 10 and 11.
- Verify the webhook before use.
- Remove/gate debug routes.
- Handle checkout.
- Process payments
- Integrate Enzona
- Support Commerce.
- Reconcile orders.
