# RagaPay — manual setup guide

**RagaPay** (`ragapay`) integrates the **RagaPay** payment gateway with **Drupal
Commerce** as an off‑site (redirect) payment method. At checkout the customer is
redirected to RagaPay to pay, and RagaPay then sends a server‑to‑server notification
back to your site to report the result. The module maps RagaPay's payment statuses to
Commerce payment states, so a successful payment marks the order's payment as
completed.

It provides one Commerce payment gateway plugin, **RagaPay (Off‑site redirect)**. On
the way out, the module builds a signed hash from the order details and your gateway
password, so RagaPay can trust the request it receives. On the way back, RagaPay POSTs
to a notification endpoint (`/ragapay/notification`) and the module updates the
matching order's payment state from the reported status.

> **Important security note about the return notification.** In this version, the
> inbound notification endpoint does **not verify a signature or hash** on the message
> RagaPay sends, and it does not bind the update to the order's amount or currency —
> it simply reads the posted `status` and sets the payment state accordingly (for
> example `status=success` marks the payment **completed**). The signed hash the
> module builds is only used on the *outbound* redirect, not checked on the *inbound*
> notification. Because the endpoint is effectively reachable without authentication
> and order IDs are sequential/guessable, a crafted request could mark an order paid
> without a real payment. Treat this as a serious consideration before using the
> module to fulfil orders: verify order/payment state against RagaPay out of band
> before shipping or granting anything of value, and follow the project's issue queue
> for a fix that adds signature verification on the notification.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer alongside Drupal
   Commerce and enable it.
2. [Configuration](configuration/index.md) — add the RagaPay gateway in Commerce,
   enter your merchant credentials, and register the notification URL.

## Where it lives in the admin menu

RagaPay does not add a settings page of its own — you configure it as a Commerce
payment gateway at **Commerce → Configuration → Payment gateways**
(`/admin/commerce/config/payment-gateways`).
