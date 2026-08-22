# Configuration

You configure Commerce Alphabank by adding it as a **payment gateway** in Drupal
Commerce and entering the credentials Alpha Bank gave you.

## Add the payment gateway

1. Log in as a user who can administer Commerce.
2. Go to **Commerce → Configuration → Payment gateways**
   (`/admin/commerce/config/payment-gateways`).
3. Click **Add payment gateway**.
4. Give it a name (for example "Alpha Bank (card)") and choose the **Alpha Bank**
   redirect plugin provided by this module.

## Key fields

- **Mode: Test or Live** — use Alpha Bank's test environment while you integrate,
  then switch to live once verified.
- **Merchant ID** — your Alpha Bank merchant identifier.
- **Shared secret** — the secret Alpha Bank issued for signing/verifying the
  callback digest. Reference the Key entity you created in
  [Installation](../installation/index.md) rather than pasting the raw value, and
  make sure it exactly matches the value configured on the bank's side.

Save the gateway. Alpha Bank now appears as a payment option, and customers are
redirected to the bank's hosted page to pay.

## How the callback is verified

When Alpha Bank calls back after payment, the module computes a **SHA‑256 digest**
over the response fields plus your **shared secret** and compares it with the
digest the bank sent:

- If they **match** and the response is captured/authorized, a **completed**
  payment is recorded and the order is fulfilled.
- If they **don't match**, the module records a non‑fulfilling **"Unvalidated"**
  payment and logs a failure — Commerce treats only *completed* payments as paid,
  so a forged or tampered callback cannot fulfil an order.

This is why the shared secret must stay secret: without it, no one can forge a
valid "paid" callback. Always serve the return/notify endpoints over HTTPS.

## Test before going live

Using Alpha Bank's test environment, place an order and confirm that a genuine paid
response records a completed payment, then switch the mode to **Live**.
