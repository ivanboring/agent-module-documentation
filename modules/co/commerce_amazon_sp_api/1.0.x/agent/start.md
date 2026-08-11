<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Amazon SP-API — agent index

**Amazon Selling Partner API integration with Drupal Commerce** (product/order/fulfillment sync — not a payment
gateway). Depends on `commerce_product`, `commerce_order`, `commerce_shipping`. Provides permissions. Version
**1.0.0**. Core `^10||^11`.

E-commerce/integration — calls the **Amazon SP-API** (egress) with **SP-API credentials (LWA/IAM)** as secrets
(env/Key, HTTPS); order data has **customer PII**. No access role beyond permission.
