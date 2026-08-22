# Configuration

Configuring Commerce Moyasar means adding a payment gateway and entering the keys
from your Moyasar dashboard.

## Add the payment gateway

1. Log in as a user who can administer Commerce.
2. Go to **Commerce → Configuration → Payment gateways**
   (`/admin/commerce/config/payment-gateways`).
3. Click **Add payment gateway**.
4. Give it a **Name** and choose the **Moyasar** plugin.

## The settings, field by field

- **Mode** — choose **test** while integrating and **live** for real payments.
  Use the matching keys for the mode you select.
- **API (publishable) key** — from your Moyasar dashboard; used by the front-end
  payment form.
- **Secret key** — from your Moyasar dashboard; used server-side (Basic auth) to
  re-fetch and verify payments. Keep this confidential.

Save the gateway. If you want customers to reuse saved cards, enable the
stored-payment-method behaviour this 2.0.x branch provides.

## Keep your secret key secret

Your Moyasar **secret key** is a secret — treat it like a password:

- Don't commit it to version control.
- Prefer storing it in an environment variable rather than hard-coding it. With
  DDEV you can set it once with the built-in dotenv command:

  ```bash
  ddev dotenv set .ddev/.env --moyasar-secret-key='<your secret key>'
  ddev restart
  ```

  Keep `.ddev/.env` out of version control.
- Always serve checkout over **HTTPS**.

## How the payment is confirmed, and a security note

When the customer returns, the module **re-fetches the payment server-side from
Moyasar's API** by its id and completes the order only when Moyasar reports a
`paid`, `authorized`, or `captured` status. Because this comes from Moyasar's
authenticated API rather than the returning request, a forged return cannot
complete an order.

As a **defense-in-depth caveat**, this release does not bind the fetched payment
to the order as tightly as it could:

- It does **not** compare the payment's `metadata.order_id` against the order being
  completed.
- It trusts the **amount** returned by the Moyasar API rather than re-checking it
  against the order total.

In theory this leaves room for a payment-id-switch or amount-mismatch scenario —
though any such case still requires a genuine, paid Moyasar transaction. If this
matters for your store, consider reconciling Moyasar payments against expected
order amounts, or applying a fix that verifies the returned `order_id` and amount.

## Test before going live

With the gateway in **test** mode and your test keys, run a full checkout and
confirm the payment records against the order. Switch to **live** keys only once
the test flow works cleanly.
