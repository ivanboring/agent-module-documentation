# Configuration

> **⚠️ Read this first.** The hardening steps at the bottom of this page are not
> optional extras — as shipped, this module can be used to fulfil orders without
> payment and exposes public debug routes. Do not go live until you have
> addressed them.

Commerce Enzona is configured on the payment‑gateway form — there is no separate
settings page.

## Add the gateway

1. Log in as a user who can administer Commerce.
2. Go to **Administration → Commerce → Configuration → Payment gateways**
   (`/admin/commerce/config/payment-gateways`) and click **Add payment gateway**.
3. Choose the **Enzona** plugin.
4. Enter your **Enzona API credentials** and set the **mode** (test vs live).
5. Save.

## Handle credentials as secrets

Your Enzona API credentials are secrets. Store them in an environment variable and
reference them through a **Key** entity rather than exported configuration:

```bash
ddev dotenv set .ddev/.env --enzona-api-key=<value>
ddev restart
```

Always operate over **HTTPS** and use separate test and live credentials for your
environments.

## Required hardening before production

These are not tuning options — they are fixes you must make (or have made) before
this gateway is safe on a live store:

- **Secure the webhook.** The notify route `/commerce_enzona/webhook` is public
  and, as shipped, completes a payment and places the order based only on a
  `status` value in the request body — no signature and no server‑side status
  check. A shopper who knows their own transaction id can forge a "completed"
  payment and get fulfilled **without paying**. Before production, the webhook
  must (a) **verify a signature/HMAC** on the request and (b) **re‑fetch the
  authoritative payment status from Enzona server‑side** and only complete the
  order if Enzona confirms payment.
- **Remove or gate the debug routes.** `/commerce_enzona/debug`, `/test-direct`
  and `/full-debug` are public, trigger authenticated Enzona API calls, leak the
  OAuth token prefix, and can create a live payment on your merchant account.
  Remove them, or restrict them behind an admin permission, before the site is
  reachable from the internet.

Until both are done, keep this gateway on an isolated test environment only.
