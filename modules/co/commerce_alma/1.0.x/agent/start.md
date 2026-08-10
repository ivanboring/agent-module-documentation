<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Alma — agent index

An **Alma (buy-now-pay-later) payment gateway for Drupal Commerce** (France/EU). Depends on `commerce_payment`.
Version **1.0.0-beta1**. Core `^8||^9||^10||^11`.

E-commerce/payment — **authoritative**: a queue worker **fetches the payment from Alma's API**
(`payments->fetch(remoteId)`) and updates on the remote **STATE_PAID** (not an IPN status). API key as a secret,
HTTPS. No access role.
