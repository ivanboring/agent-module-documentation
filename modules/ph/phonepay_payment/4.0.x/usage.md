<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
PhonePe Payment provides a PhonePe Payment Gateway for Drupal.

---

PhonePe Payment provides a **PhonePe payment gateway for Drupal Commerce** — accepting payments through
India's PhonePe platform (UPI/cards) via a redirect + server callback flow.

**Security — do not deploy this unpatched (danger 4 finding).** The callback route
`/phonepay_payment/callback/{order_id}` (`PaymentStatusController::callback`) is gated only by
`_permission: 'access content'` (anonymous on typical sites). `callback()` reads the **raw POST body**,
base64-decodes `response`, and if `payload['code'] == 'PAYMENT_SUCCESS'` it **creates a `commerce_payment` in
state `completed`** for the order (amount = order total) — marking it paid. It **never validates PhonePe's
`X-VERIFY` checksum** (the `PhonePeBaseClass::verifyResponse()` helper exists but is not called) and **never
re-fetches the status from PhonePe's API**. So an unauthenticated attacker who knows an `order_id` can
`POST /phonepay_payment/callback/<order_id>` with `{"response": base64(json({"code":"PAYMENT_SUCCESS"}))}` and
have the order **fulfilled without paying**. Fix before use: verify the `X-VERIFY` header
(`sha256(base64Response . saltKey) . '###' . saltIndex`) via `verifyResponse()` and/or call PhonePe's server-side
status API, and confirm the paid amount, before creating the payment. Treat any order as fulfillable by anyone
until patched. Configure the merchant credentials (store the salt key as a secret).

---

- Accept PhonePe payments (UPI/cards).
- Use a redirect + callback flow.
- Provide a Commerce gateway.
- HAVE an unverified-callback finding (danger 4).
- Gate the callback only by 'access content'.
- Mark orders paid from an anonymous POST.
- NOT verify the X-VERIFY checksum (helper unused).
- NOT re-fetch status from PhonePe's API.
- Let anyone fulfill any order without paying.
- Require a fix (verify X-VERIFY / re-fetch status) before deploying.
- Store the salt key as a secret.
- Treat orders as fulfillable until patched.
- Handle PhonePe payments.
- Verify payments.
- Configure the gateway.
- Process payments.
- Handle the callback.
- Take payments.
- Add callback verification.
- Provide PhonePe payment (with a known bypass).
