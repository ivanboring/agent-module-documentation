# Commerce Enzona — manual setup guide

**Commerce Enzona** (`commerce_enzona`) integrates the **Enzona** payment gateway
(used in Cuba) with Drupal Commerce. It redirects the shopper to Enzona to pay and
reconciles the order when they return. It depends on Drupal Commerce's core,
payment, order and checkout modules (`commerce`, `commerce_payment`,
`commerce_order`, `commerce_checkout`) and supports Drupal 10 and 11.

> **⚠️ Serious security warning — do not use as shipped in production.** In the
> released version (2.0.4) this module is **not covered by a security advisory**
> and has significant flaws you must fix before it touches real orders:
>
> - **The payment webhook is unauthenticated.** The notify route
>   `/commerce_enzona/webhook` is public (`_access: 'TRUE'`) and marks a payment
>   **completed** and places the order based *only* on a `status` field in the
>   request body — with **no signature/HMAC check, no `Authorization`, and no
>   server‑side re‑fetch** of the real status from Enzona. Anyone who knows their
>   own `transaction_uuid` can POST `{"transaction_uuid":"…","status":"completed"}`
>   and have their order fulfilled **without paying**.
> - **Public debug routes.** It also exposes `/commerce_enzona/debug`,
>   `/test-direct` and `/full-debug` (all public). These trigger authenticated
>   Enzona API calls, leak the OAuth token prefix, and can create a live payment
>   on your merchant account.
>
> **Do not run this on a production store without first** hardening the webhook
> (verify a signature *and* re‑fetch the authoritative status from Enzona
> server‑side before completing) **and removing or gating the debug/test routes.**

With those fixes understood as prerequisites, the module works like any off‑site
Commerce gateway: enable it, add and configure the gateway, and Enzona handles the
hosted payment. But because of the issues above, treat any unmodified deployment
as evaluation‑only.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable the
   module (read the security warning first).
2. [Configuration](configuration/index.md) — add the Enzona gateway and the
   hardening you must do before production.

## Where it lives in the admin menu

Commerce Enzona has no settings page of its own. Like every Commerce payment
method, it is added under **Administration → Commerce → Configuration → Payment
gateways** (`/admin/commerce/config/payment-gateways`) by adding a gateway and
choosing the Enzona plugin.
