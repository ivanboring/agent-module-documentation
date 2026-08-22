# Configuration

Commerce BTCPay is configured as a Commerce payment gateway; there is no separate
settings page. Before you start, make sure your BTCPay Server store exists and has
at least a Bitcoin or Lightning wallet configured.

## Add and pair the payment gateway

1. Log in as a user who can administer Commerce.
2. Go to **Administration → Commerce → Configuration → Payment gateways**
   (`/admin/commerce/config/payment-gateways`).
3. Click **Add payment gateway**, give it a **Name**, and under **Plugin** choose
   **BTCPay**.
4. Enter your **BTCPay Server URL** (for example
   `https://btcpay.yourdomain.tld`) — the server where you created your store.
5. Click **Generate API Key**. You'll be redirected to your BTCPay Server's
   authorization page.
6. On BTCPay, select the **store** you want to connect and click **Continue**.
7. Give the app a **label** (for example "Drupal 11 store") and click **Authorize
   app**.
8. You'll be redirected back to Drupal, where the **store id**, **API key**, and
   **webhook** are saved automatically.

## Other fields

- **Mode (Test / Live)** — start in **Test** and validate the full pay‑and‑confirm
  flow before switching to **Live**.
- Any wallet/currency options depend on what your BTCPay Server store supports.

Save the gateway and place a test order to confirm the invoice is created and the
order is marked paid once BTCPay reports the invoice settled.

## Storing the API key securely

The stored API key is a payment secret. Avoid committing it to exported config in
plain text; back it with an environment variable where possible. On DDEV:

```bash
ddev dotenv set .ddev/.env --btcpay-api-key='<your-api-key>'
ddev restart
```

Reference it through a **Key** entity where supported, and keep `.ddev/.env` out of
version control. Always run both your Drupal site and BTCPay Server over **HTTPS**.

## Security notes

- Payment status is **verified server‑side**: on both the return leg and the
  notification, the module re‑fetches the invoice status directly from your BTCPay
  Server (`getInvoice()`) and acts on that — it explicitly does not trust the
  return URL.
- The **notification route is public** (`_access: TRUE`), which is standard for a
  Commerce IPN endpoint; it is safe here because the module always re‑checks the
  authoritative status with BTCPay, so a forged notification cannot mark an order
  paid.
- This is an **alpha** release (reported stable by the maintainers) — validate the
  behaviour for your version before going live.
