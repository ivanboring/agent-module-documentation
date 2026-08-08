<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce Datatrans integrates the Datatrans payment platform as a Drupal Commerce payment gateway, verifying asynchronous webhook notifications with an HMAC signature.

---

Commerce Datatrans provides a Drupal Commerce payment gateway for Datatrans (a Swiss payment
service provider). The customer is sent to Datatrans to pay, and Datatrans confirms the result both
on the browser return and via an asynchronous server-to-server webhook. The webhook handler
(`PaymentNotificationController`) is notable for getting signature verification right: it requires the
`sign2` HMAC key to be configured (returning `403` if it is not), reads the `Datatrans-Signature`
header, recomputes the HMAC over the request body, and **rejects the request** (`AccessDeniedHttpException`)
if the header is missing or the signature does not match. Only after the signature validates does it
process the payment, and only for whitelisted statuses (`settled`, `transmitted`, `authorized`).

This fail-closed webhook is the correct security posture: a forged notification cannot mark an order
paid because it cannot produce a valid HMAC without the `sign2` secret. (A minor hardening note: the
signature comparison uses PHP `==` rather than `hash_equals()`, a non-constant-time compare over an
HMAC — a theoretical timing side-channel that is impractical over the network, same low-severity class
as several other Commerce gateways.) When adopting, configure the merchant ID and both signing keys
as secrets and ensure `sign2` is set so the webhook is active.

---

- Accept payments via Datatrans in Drupal Commerce.
- Redirect customers to Datatrans to pay.
- Verify Datatrans webhook notifications with HMAC.
- Require the sign2 HMAC key before enabling the webhook.
- Reject webhook calls with a missing signature header.
- Reject webhook calls with an invalid signature.
- Recompute the HMAC over the request body to verify.
- Process only whitelisted statuses (settled/authorized).
- Return 403 when sign2 is not configured.
- Configure Datatrans merchant ID and signing keys.
- Store signing keys as secrets, not in code.
- Create Commerce payments against orders.
- Integrate Datatrans into the Commerce checkout flow.
- Rely on the fail-closed webhook to reject forgeries.
- Use with commerce_payment as the gateway plugin.
- Switch between Datatrans test and production.
- Know the compare uses == (not hash_equals) — minor.
- Reconcile Datatrans transactions with orders.
- Handle the browser return alongside the webhook.
- Map Datatrans status to Commerce payment state.
