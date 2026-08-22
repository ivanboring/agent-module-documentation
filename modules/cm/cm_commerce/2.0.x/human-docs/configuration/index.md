# Configuration

CM.com Payment is configured the same way as any Drupal Commerce gateway — by adding
a payment gateway to your store, not through a dedicated settings page.

## Add the CM.com gateway

1. Go to **Commerce → Configuration → Payment gateways**
   (`/admin/commerce/config/payment-gateways`).
2. Click **Add payment gateway**.
3. Give it a name (for example "CM.com") and choose the **CM.com** plugin as the
   gateway type.

## Fill in the gateway settings

On the gateway form you'll enter the credentials CM.com issued for your account —
your **merchant key / API credentials** — which the module uses both to send the
shopper to CM.com and, on their return, to verify the order status server‑side. Set
the gateway **mode** to **Test** while you're integrating and switch it to **Live**
for production.

### Keep the merchant key secure

The merchant/API credentials are secrets. Rather than typing them straight into the
form (where they'd live in configuration), prefer supplying them from an environment
variable.

> **Using DDEV?** Store the value without committing it:
> `ddev dotenv set .ddev/.env --cm-merchant-key=<value>`, then `ddev restart`. Keep
> `.ddev/.env` out of version control.

## How the payment flow works

At checkout the shopper is redirected to CM.com to pick a payment method and pay.
When they return, the gateway makes a server‑to‑server call to CM.com's API to read
the authoritative order status, and only completes the payment if CM.com reports
success — it never trusts a status supplied by the browser. Test a full order in
**Test** mode before going live.

## Save

Save the gateway. It's now available during checkout for the store(s) it's enabled
on.
