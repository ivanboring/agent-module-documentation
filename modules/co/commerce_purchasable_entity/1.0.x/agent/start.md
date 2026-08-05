<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Purchasable Entity (commerce_purchasable_entity) — agent index

A minimal purchasable entity type for Drupal Commerce — an alternative to product + variation.
Requires `commerce`, `commerce_price`, `commerce_store`. No `configure` route, no Drush, no config
schema of its own; permissions shipped.

Key facts:
- Entities: content entity **`commerce_purchasable_entity`** with bundle entity
  **`commerce_purchasable_entity_type`** (`Entity/PurchasableEntity.php`,
  `Entity/PurchasableEntityType.php` and their interfaces). It implements Commerce's purchasable
  entity contract, so it can be the target of an order item type and flows through cart, checkout,
  pricing, tax and promotions like a product variation.
- Handlers: `PurchasableEntityStorage` (+ interface), `PurchasableEntityAccessControlHandler`,
  `PurchasableEntityListBuilder`, `PurchasableEntityTypeListBuilder`, forms
  `Form/PurchasableEntityForm.php` and `Form/PurchasableEntityTypeForm.php`, and
  `Routing/PurchasableEntityHtmlRouteProvider` for the admin routes (with menu, task and action
  links).
- Permissions: restricted **`administer commerce_purchasable_entity_type`** plus
  `create` / `edit` / `delete` / view permissions for the entities.
- Fields come from the entity definition (price + store reference at minimum); add more per bundle
  with Field UI.

Wiring it into a shop:

```bash
drush en commerce_purchasable_entity -y
# 1. Create a purchasable entity type (bundle) in the admin UI.
# 2. Create an order item type whose purchasable entity type is this one:
drush cget commerce_order.commerce_order_item_type.default
# 3. Add purchasable entities and reference them from an add-to-cart form.
```

Note: because this is a distinct entity type, product-specific contrib (product attributes,
variation-based modules such as commerce_vado) will not apply to it — that trade-off is the point
of the module.
