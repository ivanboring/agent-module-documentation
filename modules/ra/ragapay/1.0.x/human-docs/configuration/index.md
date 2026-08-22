# Configuration

RagaPay is configured as a Drupal Commerce payment gateway. Go to **Commerce →
Configuration → Payment gateways** (`/admin/commerce/config/payment-gateways`) and
add a new gateway of type **RagaPay (Off‑site redirect)**.

## Gateway settings

- **Merchant key** — your RagaPay merchant identifier.
- **Password** — the shared secret from your RagaPay account. The module uses this to
  build the signed hash sent with the outbound redirect, so it must match exactly.
- **Notification URL** — the settings form shows the notification endpoint
  (`/ragapay/notification`) as read‑only. Copy it and register it in your RagaPay
  account so RagaPay knows where to POST payment results.

Save the gateway, and it becomes available as a payment option at checkout. At
checkout the customer is redirected to RagaPay to pay; on return, Commerce records a
payment for the order, and RagaPay's server‑to‑server notification updates the
payment state (`success` → completed, `fail` → canceled, `waiting` → pending).

## Keep the merchant credentials as secrets

The merchant key and especially the password are credentials that let requests be
signed on your behalf. Handle them like any other secret:

- Do not commit them to version control. Store them in environment variables. On
  DDEV, the built‑in dotenv helper keeps them out of the repo:

  ```bash
  ddev dotenv set .ddev/.env --ragapay-merchant-key='your-key' --ragapay-password='your-password'
  ddev restart
  ```

  (`.ddev/.env` must stay out of version control.)
- Where you can, reference the secret through a **Key** entity backed by that
  environment variable rather than storing the raw value in exported configuration.
- Make sure the site runs over **HTTPS** so credentials and payment data are never
  sent in the clear.

## Important: the return notification is not verified

Before you rely on this gateway to fulfil orders automatically, understand how the
return notification behaves in this version:

- RagaPay POSTs the payment result to `/ragapay/notification`. That endpoint reads the
  posted **status** and sets the order's payment state from it **without verifying a
  signature or hash**, and **without checking the amount or currency** against the
  order.
- The signed hash the module builds is used only on the *outbound* redirect to
  RagaPay — it is **not** validated on the *inbound* notification.
- The endpoint is reachable without authentication, and Commerce order IDs are
  sequential and easy to guess.

The practical risk is that a crafted request could mark an order as paid when no real
payment occurred. Until the module adds signature verification on the notification:

- **Do not auto‑fulfil** orders (ship goods, grant access, issue licences) on the
  notification alone. Confirm the payment independently in your RagaPay dashboard, or
  add an out‑of‑band verification step, before releasing anything of value.
- Watch the project's issue queue for a release that verifies the RagaPay signature
  and binds the update to the order's ID, amount, and currency.
