<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce OPP provides Commerce integration for Open Payment Platform payments.

---

Commerce OPP provides a **Drupal Commerce payment gateway for the Open Payment Platform (OPPWA / COPYandPAY)** —
supporting card and alternative methods (e.g. MB WAY), with a `commerce_opp_webhooks` submodule for
asynchronous payment notifications. It depends on Commerce Payment, in the Commerce (contrib) package.

Use it to accept OPP payments. Its payment trust boundary is **implemented correctly** (reviewed): it never
marks a payment paid from a client-supplied field — `onReturn()` and the MB WAY polling controller both
**re-query the OPP API server-side** (authenticated `GET /v1/checkouts/{id}/payment` and `/v1/query`) and
derive the payment state from that authoritative response, verifying the order matches. The public webhook
endpoint (`/opp/webhooks`) is protected by **authenticated encryption**: it requires the `X-Initialization-Vector`
and `X-Authentication-Tag` headers and decrypts the body with **AES-256-GCM** using the configured
`encryption_secret` — a forged/tampered body fails the GCM auth tag and is rejected, so an attacker without the
secret cannot drive fulfilment. Important operational caveat: this security **depends on
`commerce_opp.settings:encryption_secret` being set and kept secret** (if empty the endpoint rejects all calls —
it fails closed, not open). Store the OPP **API credentials and the encryption secret** as secrets, use HTTPS.
See the local security.md.

---

- Accept Open Payment Platform payments.
- Support card and MB WAY methods.
- Provide a webhooks submodule.
- Re-query the OPP API server-side for status.
- NOT trust a client-supplied paid field.
- Verify the order matches.
- Protect the webhook with AES-256-GCM (authenticated).
- Reject forged/tampered webhook bodies.
- Configure and protect the encryption_secret.
- Fail closed when the secret is empty.
- Store API credentials + secret as secrets.
- Use HTTPS.
- Depend on Commerce Payment.
- Handle OPP payments.
- Verify payments.
- Configure the gateway.
- Secure the webhook.
- Process payments.
- Confirm via API.
- Provide OPP payment.
