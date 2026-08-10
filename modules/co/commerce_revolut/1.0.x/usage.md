<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce Revolut provides Commerce integration for Revolut.

---

Commerce Revolut **provides a Revolut payment gateway** for Drupal Commerce — creating a Revolut payment link/
order, redirecting the customer to pay, and recording the result. It depends on Commerce Payment and Commerce
Order.

Use it to accept Revolut payments. It is a **payment gateway**, and its result handling is sound: on return the
`onReturn()` handler **re-fetches the Revolut order from Revolut's API server-side** (by the Revolut order ID
stored against the local order) and sets the payment state from the **API's** `state` (`completed` → completed,
otherwise pending; `pending`/`processing` raise a payment failure) — it does **not** trust status supplied in the
browser redirect, so a customer can't self-report a paid order. The webhook `onNotify()` is currently a no-op
("nothing for now"), so fulfillment relies on the verified `onReturn` fetch. Security essentials: store the
Revolut **API key/secret as secrets** (env/Key), serve over HTTPS, and if you later enable webhooks verify their
signatures. It has no access-control role. Configure the Revolut API credentials.

---

- Provide a Revolut payment gateway.
- Create a Revolut payment link/order.
- Redirect the customer to pay.
- Depend on Commerce Payment + Order.
- Re-fetch the Revolut order from the API on return.
- Set state from the API's state (not request params).
- Raise a failure for pending/processing states.
- Not trust browser-supplied status (no self-reported paid order).
- Treat onNotify() as a no-op (fulfillment via verified onReturn).
- Store the Revolut API key/secret as secrets (env/Key), HTTPS.
- Verify webhook signatures if webhooks are later enabled.
- Configure the Revolut API credentials.
- Handle Revolut payments.
- Accept payments.
- Configure the gateway.
- Verify via API.
- Redirect customers.
- Record payments.
- Secure the credentials.
- Provide a Revolut gateway.
