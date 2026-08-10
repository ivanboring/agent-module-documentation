<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Moneris Checkout — agent index

A Drupal Commerce **payment gateway for Moneris Checkout (MCO)**. Depends on `commerce_payment`. Version
**1.0.2**. Core `^9||^10||^11`.

Trust boundary **correct** (verified): `onReturn()` checks the response code, **fetches the Moneris receipt
server-side** (`getReceipt(ticket)`) and **verifies `order_no` matches the order's stored MCO data** before
recording payment — authenticated against Moneris, not the returning request. Store Moneris **credentials** as
secrets; HTTPS. No access role.
