<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce Alphabank provides an Alphabank Payment gateway for Drupal Commerce.

---

Commerce Alphabank **provides an Alpha Bank (Greece) off-site redirect payment gateway** for Drupal Commerce
— the customer is redirected to Alpha Bank's hosted payment page, and on return/notification the module records
the payment. It depends on Commerce and Commerce Payment.

Use it to accept Alpha Bank card payments. It is a **payment gateway**, and its callback verification is sound:
the return/notify handler computes a **sha256 digest over the response fields concatenated with the merchant's
`shared_secret`** and rejects the callback if the received `digest` doesn't match (`hash !== digest`) — so an
attacker cannot forge a "paid" callback without the secret. On a digest mismatch it records a non-fulfilling
`"Unvalidated"` payment (Commerce only treats `completed` payments as paid) and logs a failure; only a
secret-valid, `CAPTURED`/`AUTHORIZED` response creates a completed payment. Security essentials: keep the
**`shared_secret` a secret** (it's the whole basis of trust) and serve over HTTPS. (Minor: the digest check uses
`!==` rather than a constant-time compare — negligible risk given the secret makes forgery infeasible.) Configure
the merchant ID and shared secret.

---

- Provide an Alpha Bank redirect gateway.
- Redirect to Alpha Bank's hosted page.
- Record the payment on return.
- Depend on Commerce + Commerce Payment.
- Verify the callback digest.
- Key the sha256 digest with the merchant shared_secret.
- Reject callbacks whose digest doesn't match (no forgery without the secret).
- Record a non-fulfilling 'Unvalidated' payment on mismatch.
- Complete only secret-valid CAPTURED/AUTHORIZED responses.
- Keep the shared_secret secret + serve over HTTPS.
- Note the check uses !== (negligible timing risk).
- Configure the merchant ID and shared secret.
- Handle Alpha Bank payments.
- Accept payments.
- Configure the gateway.
- Verify callbacks.
- Redirect customers.
- Record payments.
- Secure the shared secret.
- Provide an Alpha Bank gateway.
