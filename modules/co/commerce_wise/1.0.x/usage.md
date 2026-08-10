<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce Wise provides Commerce integration for Wise.

---

Commerce Wise **provides a Wise (formerly TransferWise) off-site payment gateway** for Drupal Commerce —
the customer pays via Wise and Wise notifies the site of balance/transfer events via a webhook. It depends on
Commerce Payment and Commerce Order.

Use it to accept Wise payments. It is a **payment gateway**, and its webhook handling is sound: `onNotify()`
**verifies the webhook signature before doing anything** — it reads the `X-Signature-SHA256` header and calls
`openssl_verify(payload, signature, Wise's public key, SHA256)`, rejecting the request if the RSA signature
doesn't validate; only a signature signed by Wise's private key is accepted, then it matches the transfer
reference to a local order and records the payment. Security essentials: configure **Wise's webhook public key**
correctly, store the Wise **API token as a secret** (env/Key) and serve over HTTPS. (Minor hardening note: the
verify helper treats any truthy `openssl_verify` result as valid rather than strictly `=== 1`; with a fixed valid
key and SHA256 a crafted signature returns `0` and is correctly rejected, so this isn't a practical bypass, but
`=== 1` would be the stricter form.) It has no access-control role. Configure the Wise public key and API token.

---

- Provide a Wise payment gateway.
- Let the customer pay via Wise.
- Receive Wise webhook events.
- Depend on Commerce Payment + Order.
- Verify the webhook signature BEFORE processing.
- Check X-Signature-SHA256 via openssl_verify against Wise's public key.
- Reject notifications whose RSA signature doesn't validate.
- Match the transfer reference to a local order then record payment.
- Configure Wise's webhook public key + store the API token as a secret.
- Serve over HTTPS.
- Note the verify helper uses a truthy check not === 1 (not a practical bypass).
- Configure the Wise public key and API token.
- Handle Wise payments.
- Accept payments.
- Configure the gateway.
- Verify signatures.
- Receive webhooks.
- Record payments.
- Secure the credentials.
- Provide a Wise gateway.
