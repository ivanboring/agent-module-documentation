<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
ePayco provides integration for ePayco.

---

ePayco provides **ePayco payment integration** for Drupal — with a Commerce gateway (`commerce_epayco`),
an API client (`epayco_api`) and business-rules submodule — for accepting payments through ePayco (a Latin
American payment provider), typically via offsite/redirect checkout. It provides its own permissions, in the
ePayco package.

Use it to accept ePayco payments. Its payment trust boundary is **implemented correctly** (verified): the
Commerce gateway does **not** mark orders paid from a trusted client request — it **fetches the transaction
status from ePayco's API** (`getTransactionRemoteData()` by remote id) and only sets the payment `completed`
when the **API-returned** `x_cod_response == 1`, and the outbound checkout request is **signed**
(`getPaymentSignature()`). So a forged return can't complete an order — confirmation is authenticated against
ePayco. Handle the ePayco **API keys/credentials** as secrets, use HTTPS. It has no access-control role beyond
its permission. Configure the ePayco credentials.

---

- Accept ePayco payments.
- Provide a Commerce gateway + API client.
- Use offsite/redirect checkout.
- Confirm via ePayco's API status.
- Set completed only on API x_cod_response == 1.
- Sign the outbound request.
- NOT trust a client return to complete orders.
- Reject forged returns.
- Store ePayco credentials as secrets.
- Use HTTPS.
- Provide its own permissions.
- Configure the ePayco credentials.
- Handle ePayco payments.
- Verify payments.
- Configure the gateway.
- Confirm via API.
- Handle the integration.
- Process payments.
- Secure the keys.
- Provide ePayco payment.
