<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce Escrow integrates Escrow.com transactions with Drupal Commerce.

---

Commerce Escrow provides Commerce integration for Escrow.com — letting a Drupal Commerce store settle high-value or trust-sensitive orders through Escrow.com's escrow service, where funds are held by the escrow provider until delivery is confirmed.

Note (as shipped, 1.0.2): `commerce_escrow.module` references `commerce_product`'s `ProductVariationType` class in a hook without declaring `commerce_product` as a dependency, so it fatals unless `commerce_product` is also enabled — enable `commerce_product` alongside it. Store Escrow.com API credentials securely (env-backed). Depends on `commerce_payment` and `commerce_order`; supports Drupal 10 and 11.

---

- Integrate Escrow.com with Commerce.
- Settle orders through escrow.
- Hold funds until delivery.
- Support high-value/trust orders.
- Note: references commerce_product classes.
- Require commerce_product enabled.
- Avoid the fatal by enabling commerce_product.
- Store Escrow.com credentials securely.
- Depend on `commerce_payment` and `commerce_order`.
- Support Drupal 10 and 11.
- Configure the connection.
- Handle escrow.
- Settle orders
- Integrate Escrow.com
- Support Commerce.
- Hold funds.
- Confirm delivery.
- Keep credentials secure
