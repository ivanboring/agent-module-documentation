# Configuration

Commerce Barion Payment is configured as a Commerce payment gateway; there is no
separate settings page.

## Add the payment gateway

1. Log in as a user who can administer Commerce.
2. Go to **Administration → Commerce → Configuration → Payment gateways**
   (`/admin/commerce/config/payment-gateways`).
3. Click **Add payment gateway**.
4. Give it a **Name**, and under **Plugin** choose **Barion**.

## Fields to fill in

- **POS key** — the Barion POS (point‑of‑sale) identifier for your shop, from
  your Barion account. This ties transactions to your POS.
- **API key** — the secret key the module uses to call Barion's authenticated
  API (`GetPaymentState`) when confirming a payment. Treat it as a secret (see
  below).
- **Mode / environment (Test / Live)** — Barion provides a sandbox test
  environment and a live one. Start in **Test** while validating, then switch to
  **Live** for real payments. Make sure the keys you enter match the environment
  you select.

Set any remaining fields (funding sources, currency, redirect/return options,
depending on the release) to the values that suit your Barion account.

## Storing the API and POS keys securely

The API key is a payment secret and must not be committed to code or exported in
plain text. On DDEV, store it as an environment variable and reference it through
a **Key** entity where the gateway supports one:

```bash
ddev dotenv set .ddev/.env --barion-api-key='<your-api-key>'
ddev restart
```

Then create a Key that reads that variable and reference it from the gateway
rather than pasting the raw value into the form. Keep `.ddev/.env` out of version
control.

## Save and test

1. Set the environment to **Test** and save.
2. Place a test order and pay through Barion, then confirm the order is marked
   paid once Barion reports success.
3. Switch to **Live** only after the test flow works end‑to‑end.

## Security notes

- Payment confirmation is **API‑verified**: on notification the module fetches
  the authoritative state from Barion (`GetPaymentState`) using your API key
  rather than trusting the notification payload, so a forged notification cannot
  mark an order paid.
- Keep the **API key** and **POS key** secret, and always run the site over
  **HTTPS**.
