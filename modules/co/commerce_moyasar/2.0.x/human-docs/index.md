# Commerce Moyasar — manual setup guide

**Commerce Moyasar** (`commerce_moyasar`) integrates the **Moyasar** payment
processing service into Drupal Commerce, letting a store accept payments in
**Saudi Arabia**. The shopper pays via Moyasar and returns to your site with a
payment id, which the module uses to confirm and record the payment. This **2.0.x**
branch adds support for **reusing saved payment methods (tokenized cards)**.

Confirmation is handled safely against forged returns: `onReturn()` **re-fetches
the payment server-side from Moyasar's API** (using Basic auth) by its id and
completes the order only when Moyasar reports a paid/authorized/captured status —
so a spoofed return cannot mark an order paid. As a defense-in-depth note, this
release does **not** bind the fetched payment's `order_id` metadata to the order,
and it trusts the amount returned by the API rather than re-checking it against the
order total; see the [Configuration](configuration/index.md) security note for
what that means in practice.

The module depends on Drupal Commerce's Payment module and targets **Drupal 10 and
11**. This branch is a **beta** release (`2.0.0-beta3`). To accept **Mada** cards
you may need to apply a patch referenced on the project page.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable the
   module.
2. [Configuration](configuration/index.md) — add the Moyasar gateway and enter
   your API and secret keys.

## Where it lives in the admin menu

Commerce Moyasar adds no admin page of its own. Like every Commerce payment
gateway, you configure it under **Administration → Commerce → Configuration →
Payment gateways** (`/admin/commerce/config/payment-gateways`), where you add a
new gateway of type **Moyasar**.
