# Commerce Coinbase — manual setup guide

**Commerce Coinbase** (`commerce_coinbase`) integrates the **Coinbase Commerce
API** into Drupal Commerce as an **off‑site cryptocurrency payment gateway**,
letting customers pay with Bitcoin and other cryptocurrencies. At checkout the
shopper pays either through an embedded iframe or on a hosted invoice at
coinbase.com; Coinbase then notifies your site of the payment status via a
**webhook**, and completion of checkout is held until Coinbase confirms the payment
was received.

Crypto settlement isn't instant — Coinbase completes the transaction only once the
payment is confirmed on the blockchain (roughly an hour after payment, though it
varies), so **cron is required** to poll Coinbase and move pending transactions to
complete. The gateway authenticates with an **API key** (this module implements
the API‑key method, not OAuth).

The webhook at `/coinbase/webhook/{payment_gateway}` is anonymous by design but
**verifies the `X-CC-Webhook-Signature` HMAC**: it recomputes an HMAC‑SHA256 of the
payload with your shared secret and rejects the request on any mismatch, so forged
callbacks cannot complete an order. One minor hardening note (see
[Configuration](configuration/index.md)): the signature comparison uses a plain
`!=` rather than a constant‑time comparison — a theoretical timing side‑channel
that is impractical to exploit over a network, but worth knowing. Because the
callback carries a secret validation value, your site should also serve HTTPS.

Commerce Coinbase depends on Commerce (`commerce`) and Commerce **Payment**
(`commerce_payment`) and works on Drupal 9, 10, and 11. It also relies on the
**Coinbase PHP client library** and PHP's cURL extension (see Installation). The
project is minimally maintained and uses Coinbase's Simple API keys, which Coinbase
has deprecated — verify current Coinbase Commerce API availability before relying on
it.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install the module and the Coinbase PHP
   library, and enable it alongside Commerce Payment.
2. [Configuration](configuration/index.md) — adding the gateway, entering the API
   key and webhook secret, wiring the webhook, and enabling cron.

## Where it lives in the admin menu

Like every Commerce payment method, Coinbase is set up under **Administration →
Commerce → Configuration → Payment gateways**
(`/admin/commerce/config/payment-gateways`). You add a gateway there and choose the
Coinbase plugin. The webhook endpoint is `/coinbase/webhook/{payment_gateway}`.
