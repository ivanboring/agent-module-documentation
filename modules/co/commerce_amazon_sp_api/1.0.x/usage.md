<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce Amazon SP-API integrates Amazon Selling Partner API (products, orders, fulfillment) with Drupal Commerce.

---

Commerce Amazon SP-API **integrates the Amazon Selling Partner API** — syncing products, orders and shipping/
fulfillment between Drupal Commerce and Amazon Seller Central via the SP-API. It depends on Commerce Product,
Commerce Order and Commerce Shipping, and provides its own permissions.

Use it to sell/fulfill via Amazon from Commerce. It is an e-commerce/integration feature (a product/order sync, not
a payment gateway). Security/data handling: it **calls the Amazon SP-API** (egress) with **SP-API credentials
(LWA/IAM)** — store these as **secrets** (env/Key), never commit them, and connect over HTTPS; order data includes
**customer PII**, so handle per policy. It has no access-control role beyond its permission. Configure the SP-API
credentials.

---

- Integrate the Amazon SP-API.
- Sync products/orders/fulfillment.
- Connect Commerce to Amazon.
- Depend on Commerce Product/Order/Shipping.
- Provide its own permissions.
- Serve e-commerce/integration.
- Call the Amazon SP-API (egress) - a sync, not a payment gateway.
- Store SP-API credentials (LWA/IAM) as secrets (env/Key), never commit, HTTPS.
- Handle order customer PII per policy.
- Have no access-control role beyond permission.
- Configure the SP-API credentials.
- Handle Amazon SP-API.
- Sync products.
- Configure the client.
- Sync orders.
- Handle the integration.
- Fulfill orders.
- Sync fulfillment.
- Secure the credentials.
- Provide Amazon SP-API integration.
