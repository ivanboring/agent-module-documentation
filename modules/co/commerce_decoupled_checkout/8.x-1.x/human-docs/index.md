# Commerce Decoupled Checkout — manual setup guide

**Commerce Decoupled Checkout** (`commerce_decoupled_checkout`) provides **REST API
endpoints** for a decoupled (headless) Drupal Commerce checkout, so a separate
front end — a JavaScript app, a mobile app — can create orders and complete
checkout over an API instead of using Drupal's built‑in checkout flow.

It exposes endpoints for the core steps of a purchase: creating an order (with the
user, profile, and order items), creating and initializing a payment on that
order, capturing (finalizing) a payment, and voiding a payment that has not been
captured. The maintainers report it has been used successfully with PayPal Express
Checkout, Stripe, Global Payments (formerly Realex), and Direct Debits.

It depends on **Drupal Commerce** (`commerce`) and supports Drupal 9, 10, and 11.
Note that the project is **minimally maintained**.

> **Security — read this before exposing the API.** A decoupled checkout API is a
> sensitive surface, and this module ships with two **known issues** the
> maintainers document that you must account for in your deployment:
>
> - **The front end can currently override the order‑item price.** You must keep
>   price and total calculation **server‑authoritative** and never trust a
>   client‑supplied price, or a caller could pay an amount they chose.
> - **The payment endpoints can theoretically be brute‑forced**, letting a caller
>   initialize or complete payments on behalf of other people's orders. There is no
>   built‑in tokenization tying an order to the user who created it, so you must add
>   your own authentication/authorization to ensure a caller can only act on
>   **their own** cart/order — not enumerate or manipulate others'.
>
> On top of that: confirm every payment **server‑side**, and operate the API only
> over **HTTPS**. Review the endpoint access model carefully for your setup before
> going live.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable the
   module.

There is **no configuration page** for this module — it exposes API endpoints
rather than an admin form. What you configure is the **access model** around those
endpoints in your own front end and site security, described below.

## Where it lives in the admin menu

The module adds no admin page of its own. It registers REST endpoints under paths
such as:

- `POST /commerce/order/create` — create a new order (optionally with a payment).
- `POST /commerce/payment/create/{order_id}` — create/initialize a payment.
- `POST /commerce/payment/capture/{order_id}/{payment_id}` — capture a payment.
- `POST /commerce/payment/void/{order_id}/{payment_id}` — void an uncaptured
  payment.

## How to use it

Your headless front end calls these endpoints in sequence to build an order and
take payment, wiring in whichever Commerce payment gateway you use. Because there
is no admin UI, the important work is on the **security** side: authenticate the
endpoints, authorize each caller to their own order only, enforce prices and
payment confirmation server‑side, and require HTTPS — see the security callout
above.
