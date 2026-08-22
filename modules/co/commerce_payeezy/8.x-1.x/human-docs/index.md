# Commerce Payeezy — manual setup guide

**Commerce Payeezy** (`commerce_payeezy`) integrates **Payeezy** (First Data) with
Drupal Commerce so your store can accept credit-card payments. It offers two
integration methods: a **hosted (offsite)** gateway, where the shopper is redirected
to Payeezy and back, and an **on-site** gateway, where the card is entered on your
own checkout.

It depends on **Commerce**, **Commerce Payment**, and **Commerce Order**. You
configure your Payeezy API credentials on the gateway, then attach it to your
checkout flow. Create a Payeezy developer account to obtain your API keys.

> **Important security caveat for this version — please read.** The module's
> **hosted-gateway return handler does not abort when the payment's signature
> verification fails.** On return, it recomputes an HMAC and compares it to the value
> Payeezy sent; but when the response code indicates success while the HMAC does
> **not** match, the handler only prints "Payment was not processed" and returns
> **without throwing an error**. The practical consequence is that the Commerce
> return still completes and the **order can be placed with no verified payment** —
> a returning request claiming success with a wrong or absent hash can complete an
> order **unpaid**. (The recorded amount is taken server-side from the order total,
> so the risk is the missing abort, not amount tampering; separately, the comparison
> uses PHP's loose `==` rather than a constant-time compare.) Until this is fixed,
> treat the hosted flow with caution: reconcile every order against Payeezy before
> fulfilling, or apply a patch that **throws a payment exception on a signature
> mismatch** (as the module already does for a bad response code) and uses
> `hash_equals()`. Watch the project's issue queue for a fix. This project is listed
> as **not covered** by Drupal's security advisory policy.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install the module with Composer and
   enable it.
2. [Configuration](configuration/index.md) — add and configure the Payeezy payment
   gateway, and store its credentials safely.

## Where it lives in the admin menu

Like every Commerce gateway, it is added under **Administration → Commerce →
Configuration → Payment gateways** (`/admin/commerce/config/payment-gateways`) by
adding a new gateway and choosing the Payeezy plugin (hosted or on-site). Older
documentation refers to `/admin/commerce/config/payment-methods`. You then attach it
to your checkout flow.
