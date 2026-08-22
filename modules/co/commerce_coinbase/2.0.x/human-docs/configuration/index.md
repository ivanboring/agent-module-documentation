# Configuration

Coinbase is configured like any Commerce payment gateway, with the added steps of
supplying a webhook secret, wiring the webhook on the Coinbase side, and making sure
cron runs.

## Store the API key and webhook secret securely

The gateway needs a Coinbase **API key** and a **webhook secret**. Keep both out of
version control. On a DDEV site, store them in environment variables:

```bash
ddev dotenv set .ddev/.env --coinbase-api-key=<value>
ddev dotenv set .ddev/.env --coinbase-webhook-secret=<value>
ddev restart
```

(`.ddev/.env` must stay out of version control.) Reference them through **Key**
entities where practical. The **webhook secret is especially sensitive**: it is what
the HMAC signature verification depends on, so a leaked secret would let someone
forge valid callbacks. Serve your site over **HTTPS** so the callback's secret
validation value isn't exposed in transit.

## Add the gateway

1. Go to **Commerce → Configuration → Payment gateways**
   (`/admin/commerce/config/payment-gateways`) and click **Add payment gateway**.
2. Give it a name and display label, and choose the Coinbase plugin.
3. Enter your **API key** and the **webhook shared secret**.
4. Choose test/live mode and save.

## Wire up the webhook

In your Coinbase Commerce account, add a webhook endpoint pointing at your site's
`/coinbase/webhook/{payment_gateway}` URL (substitute the machine name of the
gateway you created), and use the same shared secret you entered above. This is how
Coinbase notifies your site when a charge is confirmed. Without it, orders won't
finalize even after a successful payment.

## Enable cron

Because crypto payments confirm on the blockchain some time after checkout, the
module uses **cron** to poll Coinbase and update pending transactions to complete.
Make sure Drupal cron runs on a regular schedule, or payments may stay stuck in a
pending state.

## How confirmation is secured

The webhook endpoint is intentionally anonymous (Coinbase's servers must reach it),
but security comes from the **signature check, not from access control**:

- On each callback the module recomputes `hash_hmac('sha256', <payload>, <secret>)`
  and compares it against the `X-CC-Webhook-Signature` header, **rejecting the
  request on any mismatch**. A forged callback without the correct secret is
  rejected, and the order is finalized only on a genuine `charge:confirmed` event
  (with de‑duplication so an already‑paid order isn't processed twice).
- **Minor hardening note:** the comparison uses PHP's `!=` rather than a
  constant‑time comparison such as `hash_equals()`. This is a theoretical timing
  side‑channel against a secret‑keyed HMAC and is impractical to exploit over a
  network, but it's worth noting and worth watching for a fix upstream. Keeping the
  webhook secret confidential is the effective mitigation.
