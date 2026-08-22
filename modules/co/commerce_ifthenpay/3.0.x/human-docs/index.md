# Commerce Ifthenpay — manual setup guide

**Commerce Ifthenpay** (`commerce_ifthenpay`) provides Drupal Commerce payment
gateways for [ifthenpay](https://www.drupal.org/project/commerce_ifthenpay), the
Portuguese payment provider. It covers three payment methods, each delivered as a
separate submodule you enable only if you need it:

- **Multibanco references** — the customer receives an entity/reference pair to pay
  at an ATM or via home banking. The recommended mode generates references
  dynamically through ifthenpay's REST API (order IDs up to 25 characters, no
  hashing, no reference collisions, optional expiry, and a sandbox endpoint for
  testing); an offline mode from your entity/sub-entity pair is kept for backwards
  compatibility. This is the base module.
- **MB WAY** (`commerce_ifthenpay_mbway`) — a payment push is sent to the
  customer's phone at checkout. Customers can also re-send the push for an unpaid
  order from their order history (CSRF-protected and flood-controlled), and staff
  can trigger a push from the admin side.
- **Credit card** (`commerce_ifthenpay_cc`) — redirect-based card payments through
  ifthenpay.

The payment confirmations are implemented correctly. Multibanco confirms by
**polling ifthenpay's API server-side** (the server's status is authoritative, so
there is nothing a shopper can forge), and the credit-card return handler
**recomputes and verifies ifthenpay's security key** (a SHA-256 of the order ID,
amount, request ID and your card key) with a strict comparison **and** re-checks
that the charged amount equals the order amount — throwing an exception on any
mismatch, so forged or tampered returns are rejected. Handle your ifthenpay keys
(MB key, anti-phishing key, credit-card key) as secrets, over HTTPS. It depends on
Commerce Payment and runs on Drupal 10 and 11.

> **Use the 3.0.x branch.** The 2.x branch is no longer supported; it predates the
> reference-collision mitigation for high order IDs, which the 3.0.x API mode
> eliminates entirely.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable the
   base module plus the payment-method submodules you need.
2. [Configuration](configuration/index.md) — add the gateways, enter your
   ifthenpay credentials, and register the callback URLs.

## Where it lives in the admin menu

Each payment method is a gateway added under **Administration → Commerce →
Configuration → Payment gateways**
(`/admin/commerce/config/payment-gateways`). See
[Configuration](configuration/index.md).
