# Commerce Datatrans — manual setup guide

**Commerce Datatrans** (`commerce_datatrans`) integrates **Datatrans** — a Swiss
payment service provider — as a Drupal Commerce payment gateway. The customer is
redirected to Datatrans to pay, and Datatrans confirms the result in two ways: on
the browser return, and via an asynchronous **server‑to‑server webhook**
notification. The module currently supports Datatrans security levels 0, 1, and 2
for the redirected payment flow, with full logging for testing and debugging.

The problem it solves is simply accepting payments through Datatrans for merchants
who have a Datatrans contract. You configure your merchant ID and signing keys,
add the gateway to checkout, and Datatrans handles the actual card entry.

> **On the security side — this integration is done right.** The module's review
> notes record that the webhook handler **verifies an HMAC signature and fails
> closed**: it requires the `sign2` key to be configured (returning `403` if it is
> not), reads the `Datatrans-Signature` header, recomputes the HMAC over the
> request body, and **rejects** the request if the header is missing or the
> signature does not match. Only after the signature validates — and only for
> whitelisted statuses (`settled`, `transmitted`, `authorized`) — does it mark the
> order paid. A forged notification cannot mark an order paid because it cannot
> produce a valid HMAC without your `sign2` secret. There is one minor,
> low‑severity note (the comparison uses `==` rather than a constant‑time
> compare), covered in [Configuration](configuration/index.md).

It depends on **Commerce Payment** (`commerce_payment`) and supports Drupal 10.1
and 11.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable the
   module.
2. [Configuration](configuration/index.md) — add the Datatrans gateway, enter your
   merchant ID and signing keys, and make sure the webhook is active.

## Where it lives in the admin menu

Like every Commerce gateway, Datatrans is added under **Administration → Commerce
→ Configuration → Payment gateways**
(`/admin/commerce/config/payment-gateways`). The gateway's form is where you enter
your Datatrans credentials.
