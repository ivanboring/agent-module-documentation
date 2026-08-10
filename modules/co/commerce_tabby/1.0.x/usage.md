<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce Tabby provides Commerce integration for Tabby Payments.

---

Commerce Tabby **provides the Tabby Payments (buy-now-pay-later) gateway** for Drupal Commerce — the customer
is redirected to Tabby to pay, and Tabby confirms the outcome via a webhook. It depends on Commerce Payment.

Use it to accept Tabby BNPL payments. It is a **payment gateway**, and its result handling is sound: although the
webhook `onNotify()` does not carry/verify a signature, it only reads the Tabby **payment `id`** from the
notification and then **re-fetches that payment from Tabby's API server-side** (`GET v2/payments/{id}` via an
authenticated request) — the payment status used to authorize/complete comes from that **authenticated API
response** (only `CLOSED`/`AUTHORIZED` proceed), not from anything an attacker could put in the webhook body. The
local payment is resolved via `meta.payment_id`, transitions are lock-guarded, and repeat deliveries no-op once the
payment leaves `new`. So a forged webhook can't mark an order paid. Security essentials: store the Tabby **secret/
public API keys as secrets** (env/Key) and serve over HTTPS. It has no access-control role. Configure the Tabby
API credentials.

---

- Provide a Tabby BNPL gateway.
- Redirect the customer to Tabby.
- Confirm the outcome via webhook.
- Depend on Commerce Payment.
- Read only the payment id from the webhook.
- Re-fetch the payment from Tabby's API (GET v2/payments/{id}).
- Derive status from the authenticated API response (CLOSED/AUTHORIZED only).
- Not trust the webhook body (a forged webhook can't mark paid).
- Resolve the local payment via meta.payment_id + lock-guard transitions.
- Store the Tabby API keys as secrets (env/Key), HTTPS.
- Have no access-control role.
- Configure the Tabby credentials.
- Handle Tabby payments.
- Accept payments.
- Configure the gateway.
- Verify via API.
- Redirect customers.
- Authorise payments.
- Secure the credentials.
- Provide a Tabby gateway.
