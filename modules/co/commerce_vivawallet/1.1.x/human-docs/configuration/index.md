# Configuration

Commerce Viva Wallet is configured as a standard Drupal Commerce payment gateway.

## Store your Viva credentials as secrets

Your Viva Wallet **client secret** (and API/merchant keys) are credentials. Keep
them out of committed configuration. On a DDEV project, store them in environment
variables and expose them through Key entities:

1. Save the credential into DDEV's environment file (never commit `.ddev/.env`):

   ```bash
   ddev dotenv set .ddev/.env --viva-client-secret=YOUR_SECRET_HERE
   ddev restart
   ```

2. Confirm it is set **without printing its value**:

   ```bash
   ddev exec 'test -n "$VIVA_CLIENT_SECRET"'   # exit 0 means set
   ```

3. Install **Key** if needed and create a Key that reads the variable:

   ```bash
   ddev composer require drupal/key
   ddev drush en key -y
   ddev drush key:save viva_client_secret --label='Viva Wallet Client Secret' \
     --key-type=authentication --key-provider=env \
     --key-provider-settings='{"env_variable":"VIVA_CLIENT_SECRET","base64_encoded":false,"strip_line_breaks":true}' \
     --key-input=none -y
   ```

If the gateway form only offers a plain text field, reference the variable from
`settings.php` via `getenv('VIVA_CLIENT_SECRET')` rather than committing it.

## Add the Viva Wallet payment gateway

1. Go to **Commerce → Configuration → Payment gateways**
   (`/admin/commerce/config/payment-gateways`) and click **Add payment gateway**.
2. Choose the **Viva Wallet** plugin.
3. Enter your Viva **client ID**, **client secret**, and any merchant/API key the
   form asks for (use the Keys you created where the form allows it).
4. Set the gateway **mode** — Viva's demo/sandbox while you set up, live for
   production.
5. Save.

## Set up the webhook

Viva confirms payments to your site via a webhook.

1. In the Viva.com portal, configure the webhook to point at your site's Viva
   notification URL for this gateway.
2. Viva validates the endpoint by calling the module's **`verify_hook`** endpoint,
   which returns Viva's verification key — this is a standard part of Viva webhook
   setup.

The module verifies real payments by **re‑fetching the transaction from Viva's
API** using the transaction id in the webhook, so the payment status always comes
from Viva's authenticated API rather than the webhook payload.

## Test vs live

Use Viva's demo credentials and the gateway's test mode first. Place a **test
order**, complete payment, and confirm the order is marked paid after the webhook
fires and the transaction is re‑fetched. Then switch to live credentials and live
mode.

## Security recap

- The webhook is **authoritative by re‑fetch**: it carries only a transaction id,
  and the module fetches the real transaction from Viva's API before setting the
  payment state — so a forged webhook cannot mark an order paid.
- The **`verify_hook`** endpoint returning Viva's verification key is standard Viva
  setup, not a leak.
- Keep the **client credentials** in environment variables / Keys, never in
  committed config, and serve the site over HTTPS.
