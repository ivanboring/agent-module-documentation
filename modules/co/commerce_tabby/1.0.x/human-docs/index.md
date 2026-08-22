# Commerce Tabby — manual setup guide

**Commerce Tabby** (`commerce_tabby`) provides the **Tabby Payments** (buy-now-pay-later)
gateway for Drupal Commerce. At checkout the customer is redirected to Tabby to pay, and
Tabby confirms the outcome via a webhook. It depends on Commerce Payment and lets stores —
typically in Tabby's MENA markets — offer Tabby's instalment/BNPL option.

It solves accepting Tabby payments end-to-end, with sound result handling. Although the
webhook (`onNotify()`) does not carry or verify a signature, it never trusts the notification
body: it reads only the Tabby **payment `id`** from the notification and then **re-fetches
that payment from Tabby's API server-side** (`GET v2/payments/{id}` via an authenticated
request). The status used to authorize or complete the order comes from that **authenticated
API response** — only `CLOSED` or `AUTHORIZED` proceed — not from anything an attacker could
put in the webhook body. The local payment is resolved via `meta.payment_id`, transitions are
lock-guarded, and repeat deliveries no-op once the payment has left its initial state. In
short, a forged webhook cannot mark an order paid.

Store your Tabby **secret and public API keys** as secrets and serve the site over HTTPS. The
module has no access-control role of its own; you configure it by adding the gateway and
entering your Tabby credentials.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable the module.
2. [Configuration](configuration/index.md) — add the gateway and enter your Tabby API keys.

## Where it lives in the admin menu

You add and configure it as a payment gateway at **Commerce → Configuration → Payment
gateways** (`/admin/commerce/config/payment-gateways`) — choose **Add payment gateway** and
select the Tabby plugin.
