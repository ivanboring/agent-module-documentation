# Configuration

Konnect is set up as a Drupal Commerce **payment gateway** — there is no separate
global settings page. You add one gateway and configure it there, then register a
webhook in your Konnect portal.

## Before you start: store your Konnect credentials safely

Konnect issues an **API key**, an **API secret**, and a **receiver wallet ID**.
The API secret is a secret — never paste it into committed code or a configuration
export that lands in version control.

On a DDEV site, keep the value in an environment variable and expose it to Drupal
through a **Key** entity:

1. Save the secret into DDEV's dotenv file:

   ```bash
   ddev dotenv set .ddev/.env --konnect-api-secret=<your-secret>
   ddev restart
   ```

   The flag `--konnect-api-secret` becomes the environment variable
   `KONNECT_API_SECRET`. Keep `.ddev/.env` out of version control.

2. Install the **Key** module if you don't already use it:

   ```bash
   ddev composer require drupal/key
   ddev drush en key -y
   ```

3. Create a Key that reads the environment variable and reference it from the
   gateway form rather than typing the raw secret.

## Add the Konnect gateway

1. Log in as a user who can **administer commerce payment gateways** (an
   administrator by default).
2. Go to **Administration → Commerce → Configuration → Payment gateways**
   (`/admin/commerce/config/payment-gateways`).
3. Click **Add payment gateway** and give it a customer‑friendly **Name**.
4. Choose the **Konnect** plugin.

## Fill in the gateway settings

- **API key** — the public API key from your Konnect dashboard.
- **API secret** — enter this (or reference the Key you created above). It
  authenticates the server‑side calls the module makes to Konnect to verify each
  transaction.
- **Receiver wallet ID** — the Konnect wallet that receives the payments.
- **API environment (sandbox vs live)** — start in **sandbox** while you set things
  up and switch to **live** only after confirming a real end‑to‑end payment. Using
  the wrong environment either fails against the live service or produces orders
  that were never really charged.

## Register the webhook with Konnect

Konnect can notify your store asynchronously so that an order is updated even if the
customer closes their browser after paying. The gateway settings display a
**Webhook URL** for this site — **copy it and paste it into your Konnect merchant
portal** to enable real‑time status updates.

You do not need to add your own signature check on this webhook: when Konnect calls
back, the module **re‑fetches the transaction from Konnect's authenticated API**,
confirms the transaction's order ID matches, and completes the order only when the
API reports `CAPTURED`. A forged webhook or return therefore cannot mark an order
paid — authenticity comes from the authenticated API lookup, not from the incoming
request.

## Save and test end to end

Click **Save**, then place a test order. Choose Konnect at checkout; you should be
redirected to Konnect's hosted page to pay, and on returning the order should be
completed only after the module confirms a `CAPTURED` status server‑side. Confirm
the whole flow — including a webhook‑driven update — works in **sandbox** before
switching to **live**.
