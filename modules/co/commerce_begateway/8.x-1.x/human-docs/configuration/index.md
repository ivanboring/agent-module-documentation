# Configuration

BeGateway Payment is configured as a Commerce payment gateway; there is no
separate settings page.

## Add the payment gateway

1. Log in as a user who can administer Commerce.
2. Go to **Administration → Commerce → Configuration → Payment gateways**
   (`/admin/commerce/config/payment-gateways`).
3. Click **Add payment gateway**.
4. Give it a **Name**, and under **Plugin** choose **BeGateway**.

## Fields to fill in

Enter the credentials from your BeGateway account:

- **Shop ID** — your BeGateway shop identifier.
- **Shop key / public key** — the shop key used to build the payment request.
- **Secret key** — the secret used together with the SDK to authorize incoming
  webhooks (`isAuthorized()`). This is the sensitive value; treat it as a secret
  (see below).
- **Mode (Test / Live)** — start in **Test** while you validate the redirect and
  notification flow, then switch to **Live** for real payments. Make sure your
  credentials match the mode.

Set any remaining fields (gateway/domain URL, currency, language, depending on
the release) to the values BeGateway provides.

## Storing credentials securely

The shop key and secret are payment credentials and should be backed by
environment variables, not committed to code or exported config. On DDEV:

```bash
ddev dotenv set .ddev/.env --begateway-secret='<your-secret-key>'
ddev restart
```

Reference the value through a **Key** entity where the gateway supports one,
rather than pasting the raw secret into the form. Keep `.ddev/.env` out of version
control.

## Save and test

1. Set **Mode** to **Test** and save.
2. Place a test order and pay through the BeGateway redirect, then confirm the
   order completes on return.
3. Switch to **Live** only after the test flow works end‑to‑end.

## Security notes

- Notifications are **authenticated**: the notify handler verifies
  `$webhook->isAuthorized()` (shop‑id/secret credential check) before acting, and
  the return path compares the transaction amount to the order amount — so a
  forged or amount‑mismatched callback cannot complete an order.
- Keep the **secret key** (and shop key) out of version control, backed by
  environment variables, and always run the site over **HTTPS**.
