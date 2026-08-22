# Monobank — manual setup guide

**Monobank** (`monobank`) lets a Drupal store accept payments through
[Monobank](https://www.monobank.ua/), the Ukrainian bank's acquiring API. It
adds a payment method that creates a Monobank invoice, sends the customer off to
pay, and then records the result back in your store. It plugs into the
**AlternativeCommerce (Basket)** ordering system rather than Drupal Commerce.

The module registers a payment service you attach to a payment point in Basket's
settings, and it has its own settings page for the Monobank acquiring **token**
and a test-mode switch. It needs configuration before it can take payments — at
minimum you must enter your Monobank token.

Please read the security note below carefully **before** putting this module
into production: the payment-status webhook does not verify Monobank's
signature, which has a real fraud implication for how you fulfil orders.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable the
   module.
2. [Configuration](configuration/index.md) — enter the Monobank token safely, set
   up the Basket payment point, and understand the webhook risk.

## Where it lives in the admin menu

- The gateway's own settings are at **`/admin/config/development/monobank`**
  (config route `monobank.settings`).
- You first create a payment point under Basket's payment settings at
  **`/admin/basket/settings-payment`** and select "Monobank" as its service;
  Basket then gives you a button through to the gateway settings above.

## Important: the payment webhook does not verify Monobank's signature

Monobank ECDSA-signs its webhook callbacks (an `X-Sign` header verifiable against
Monobank's public key). This module's status callback at **`/monobank/status`**
is publicly reachable and marks an order **paid** — and runs the order's
fulfilment step — whenever it receives a POST whose `status` is `success` and
whose `invoiceId`, `amount` and currency match the stored payment, **without
checking that `X-Sign` signature**. Those matching values are all things the
paying customer can already see for their own order, so a customer could POST a
forged `status=success` to `/monobank/status` and have their order fulfilled
**without actually paying**.

The safe way to run this module is to **not rely on the webhook alone to release
goods**: confirm each payment authoritatively via Monobank's server-side status
check (`getStatus()`) before fulfilling, and/or verify the `X-Sign` signature
against Monobank's public key. Always serve the site over HTTPS. The details are
in [Configuration](configuration/index.md).
