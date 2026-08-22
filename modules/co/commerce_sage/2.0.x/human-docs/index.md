# Commerce SagePay integration — manual setup guide

**Commerce SagePay integration** (`commerce_sage`) lets a Drupal Commerce store
take card payments through the **SagePay / Opayo** gateway (now part of Elavon)
as an **on-site** gateway. "On-site" means the customer types their card details
into a form on your own checkout rather than being redirected away; the module
then creates a transaction through the SagePay REST API, runs the customer
through a **3-D Secure** challenge, and marks the order paid once authentication
comes back.

It is aimed at merchants who have a SagePay/Opayo vendor account and want the
in-page card experience. It supports the **Payment** and **Repeat** transaction
types. A number of operations are **not implemented yet** — pre-authorisation,
void, refund, cancel, deferred, release, abort and authorise — so if your
workflow needs those, check the issue queue before committing.

The module depends on Drupal **Commerce** and its **Payment** module
(`commerce_payment`). It is marked *minimally maintained* (maintenance fixes
only) on drupal.org.

> **Important security note before you deploy this.** The module's public agent
> notes flag that the 3-D Secure **return controller does not bind the verified
> transaction back to the specific order or its amount**. In practice that means
> the completion step trusts an attacker-suppliable transaction reference, which
> opens the door to cross-order or replay fulfilment (an order being marked paid
> using someone else's authentication), and the controller logs the raw POST
> body (which can contain card / 3-D Secure data). Treat this as a real risk:
> keep the gateway admin restricted to trusted roles, run everything over HTTPS,
> review/patch the return flow before taking live payments, and watch your logs.
> This is described in the sibling agent docs — see below.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable the
   module.
2. [Configuration](configuration/index.md) — create the SagePay (On-site)
   gateway and enter your vendor credentials, field by field.

## Where it lives in the admin menu

There is no standalone settings page. You configure SagePay by adding a payment
gateway under **Administration → Commerce → Configuration → Payment gateways**
(`/admin/commerce/config/payment-gateways`) and choosing the SagePay (On-site)
plugin. See [Configuration](configuration/index.md).
