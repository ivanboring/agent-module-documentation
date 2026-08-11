<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce Unzer provides a Drupal Commerce payment method for the Unzer provider.

---

Commerce Unzer **provides the Unzer payment gateway** for Drupal Commerce — an off-site redirect flow where the
customer pays via Unzer (formerly Heidelpay) and the module records the payment. It depends on Commerce Payment.

Use it to accept Unzer payments. It is a **payment gateway**, and its result handling is sound: the `onReturn()`
handler **re-fetches the payment from the Unzer API server-side** (`fetchPayment($payment_id)`) to determine the
outcome, and it implements `onNotify()` for webhooks — so the payment status comes from Unzer's authenticated API,
not from forgeable request parameters. Security essentials: store the Unzer **private/public keys as secrets**
(env/Key), serve over HTTPS. It has no access-control role. Configure the Unzer keys.

---

- Provide an Unzer payment gateway.
- Use an off-site redirect flow.
- Record the payment on return.
- Depend on Commerce Payment.
- RE-FETCH the payment from the Unzer API server-side (fetchPayment).
- Implement onNotify() for webhooks.
- Derive the status from Unzer's authenticated API (not forgeable request params).
- Store the Unzer private/public keys as secrets (env/Key).
- Serve over HTTPS.
- Have no access-control role.
- Configure the Unzer keys.
- Handle Unzer payments.
- Accept payments.
- Configure the gateway.
- Verify via API.
- Record payments.
- Handle the return.
- Fetch the payment.
- Secure the keys.
- Provide an Unzer gateway.
