# Configuration

Commerce Wise is configured as a Drupal Commerce payment gateway. You provide your
Wise API token and Wise's webhook public key, then register the webhook in Wise.
See the module's README for Wise Quick Pay's exact configuration steps.

## Add the payment gateway

1. Log in as a user who can administer Commerce.
2. Go to **Commerce → Configuration → Payment gateways**
   (`/admin/commerce/config/payment-gateways`).
3. Click **Add payment gateway**, name it (for example "Wise"), and choose
   **Wise** as the plugin.

## Gateway settings

- **Wise API token** — the API token from your Wise business account, used to
  authenticate calls to Wise. This is a secret value.
- **Wise webhook public key** — the RSA public key Wise uses to sign webhook
  notifications. The module validates every incoming webhook's
  `X-Signature-SHA256` header against this key and rejects anything that does not
  verify, so it must be configured correctly for real‑time updates to work.
- Standard Commerce options let you mark the gateway test/production and enable or
  disable it.

## Set up the webhook

In your Wise account, register a webhook pointing at your site's Commerce Wise
webhook endpoint so Wise can notify Drupal of balance/transfer events. When a
verified notification arrives, the module matches the transfer reference to the
corresponding local order and records the payment.

## Handle the credentials safely

The Wise **API token** is a secret. Never commit it to code. On DDEV, store it in
an environment variable and reference it through a **Key** entity where the field
allows, rather than pasting it into exported configuration:

```bash
ddev dotenv set .ddev/.env --wise-api-token=<value>
ddev restart
```

Always serve the site over **HTTPS**.

## Save and test

Click **Save**, then run a test transaction and confirm a signed webhook from
Wise is accepted and records the payment against the right order before going
live.
