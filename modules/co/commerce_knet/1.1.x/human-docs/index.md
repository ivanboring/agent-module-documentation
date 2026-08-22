# Commerce KNET — manual setup guide

**Commerce KNET** (`commerce_knet`) integrates the **KNET** payment gateway with
Drupal Commerce. KNET is Kuwait's national debit‑card payment network, so this
module is what a Kuwaiti store uses to accept KNET card payments at checkout. The
shopper is sent to KNET to pay and returns to your store with an
**AES‑encrypted response** (`trandata`) that the module decrypts and verifies.

It depends on **Commerce Payment** (`commerce_payment`) and supports **Drupal 10
and 11**.

The return handling is careful and defensive — a good sign for a payment gateway.
When the shopper comes back from KNET, the module **decrypts the `trandata`
response using the merchant's terminal resource key** (which cannot be forged
without that key), requires the transaction result to be **`CAPTURED`**, checks
that the **returned amount equals the order's own total**, and records the payment
using the order's total rather than any amount supplied in the return. Taken
together, this means a tampered or forged return cannot complete an unpaid order.
Your job is to store the **KNET credentials** (terminal ID and resource key)
securely — environment‑backed, never committed.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable the
   module.
2. [Configuration](configuration/index.md) — add the KNET payment gateway, enter
   your terminal credentials, and choose test versus live.

## Where it lives in the admin menu

KNET is configured as a Commerce **payment gateway** under **Administration →
Commerce → Configuration → Payment gateways**
(`/admin/commerce/config/payment-gateways`). Add a new gateway, choose the KNET
plugin, and configure it as described in [Configuration](configuration/index.md).
