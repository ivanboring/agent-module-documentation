<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce Banca Intesa provides Drupal Commerce integration with Banca Intesa Serbia's payment services.

---

Commerce Banca Intesa provides a **Drupal Commerce offsite-redirect payment gateway** for **Banca Intesa
Serbia** (NestPay/Payten) — the customer is redirected to the bank to pay and returned to the site, where the
module validates the result and records the payment. It depends on Commerce Order and Commerce Payment, in the
Commerce (contrib) package.

Use it to accept Banca Intesa Serbia payments. Its payment trust boundary is **implemented correctly**: on
return, `onReturn()` checks the merchant ID against config, verifies the bank's **digital signature** via
`isHashValid()` (recomputes `base64(sha512(fields . store_key))` and rejects on mismatch — forging a valid
HASH requires the shared **store_key** secret), requires `ProcReturnCode == '00'`, and records the payment for
**`$order->getBalance()`** (the site's own order total, **not** a request value) — so a forged or amount-
tampered callback cannot mark an order paid. One minor deviation (danger 1): the signature comparison uses PHP
`!=` (non-constant-time — should be `hash_equals()`), a theoretical timing side-channel on a secret-keyed
hash; and the hashed field set is taken from the request's `HASHPARAMS` rather than a fixed server list
(harmless because the secret still gates it, but brittle). Store the **store_key** as a secret and use HTTPS.
See the local security.md.

---

- Provide a Banca Intesa Serbia gateway.
- Use offsite redirect (NestPay).
- Verify the bank's digital signature.
- Recompute the HASH with the store_key secret.
- Reject a forged/tampered callback.
- Record the payment for the server-side order total.
- Require ProcReturnCode == 00.
- KNOW the signature compare is non-constant-time (!=; danger 1).
- Prefer hash_equals() and a fixed hashed-field set.
- Store the store_key as a secret.
- Use HTTPS.
- Depend on Commerce Order/Payment.
- Handle Banca Intesa payments.
- Configure the gateway.
- Verify payments.
- Handle the return leg.
- Accept card payments.
- Configure store_key.
- Guard the payment callback.
- Process payments.
