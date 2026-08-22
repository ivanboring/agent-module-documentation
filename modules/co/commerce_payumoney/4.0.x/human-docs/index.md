# Commerce PayUMoney — manual setup guide

**Commerce PayUMoney** (`commerce_payumoney`) adds a Drupal Commerce payment
gateway for **PayU / PayUMoney**, the hosted checkout popular in India. It is an
*off-site* (redirect) gateway: the shopper is sent to PayU to pay, and PayU calls
back to your site's notify, success, and failure endpoints to report the outcome,
which the module reconciles into a Commerce payment on the order.

It solves the everyday need to take PayUMoney payments in Commerce without
handling card data on your own server. It depends on **Drupal Commerce** and the
**Commerce Payment** module. It does **not** work on enable alone — you must add a
PayUMoney gateway and enter your merchant key and salt, and the module expects the
selected customer profile to carry an address and a phone field (`field_phone`).

> ## ⚠️ Important security warning — read before using in production
>
> In this version, the callback endpoints (`/payment/notify/payumoney`,
> `/payment/success/payumoney`, `/payment/failure/payumoney`) are anonymous, and
> the shipped `verifyPaymentHash()` routine **does not implement a real hash
> check** — the module's own documentation notes it returns success
> unconditionally. As a result, an unauthenticated attacker who POSTs a forged
> "success" response can cause an order to be marked **paid** without any money
> changing hands. **Do not use this module as-is on a live store.** Before
> production use, have a developer implement PayU's reverse-hash (SHA-512)
> verification on the callbacks and bind the recorded amount to the order total.
> This is surfaced from the module's public documentation so you can make an
> informed decision.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install the module with Composer and
   enable it.
2. [Configuration](configuration/index.md) — add the gateway, enter your
   credentials, and prepare the customer profile — plus the security caveat above.

## Where it lives in the admin menu

Commerce PayUMoney is configured as a payment gateway under **Administration →
Commerce → Configuration → Payment gateways**
(`/admin/commerce/config/payment-gateways`), where you add a new gateway and
choose the **PayUmoney Redirect** plugin. See
[Configuration](configuration/index.md).
