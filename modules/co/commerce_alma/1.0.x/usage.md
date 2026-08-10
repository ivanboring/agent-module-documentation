<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce Alma provides Commerce integration for Alma.

---

Commerce Alma provides an **Alma payment gateway for Drupal Commerce** — offering Alma's installment / buy-
now-pay-later payments through an offsite-redirect flow (popular in France/EU). It depends on Commerce Payment,
in the Commerce (contrib) package.

Use it to offer Alma installment payments. It is an e-commerce/payment feature and its verification follows the
**authoritative pattern**: after the offsite flow, a queue worker (`PaymentUpdater`) **fetches the payment from
Alma's API** (`getApi()->payments->fetch($remoteId)` via the Alma SDK with the merchant API key) and updates the
order only based on the **authoritative remote state** (`STATE_PAID`) — it does not trust an IPN payload's status.
Store the Alma **API key** as a secret over HTTPS. Beta release — verify the flow for your version. It has no
access-control role. Configure the Alma credentials.

---

- Offer Alma BNPL/installment payments.
- Use the offsite-redirect flow.
- Serve French/EU payments.
- Depend on Commerce Payment.
- FETCH the payment from Alma's API (authoritative).
- Update on the remote STATE_PAID.
- Not trust an IPN payload status.
- Store the Alma API key as a secret over HTTPS.
- Verify the flow for your (beta) version.
- Have no access-control role.
- Configure the Alma credentials.
- Handle Alma payments.
- Verify payments.
- Configure the gateway.
- Process payments.
- Fetch remote state.
- Handle the integration.
- Take payments.
- Secure the key.
- Provide Alma payment.
