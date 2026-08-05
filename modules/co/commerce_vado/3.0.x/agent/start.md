<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Variation Add On (commerce_vado) — agent index

Attaches product **variations** as children of other variations, with a dedicated discount
adjustment type. Requires `commerce_cart`, `commerce_product`, `commerce_price`.
No `configure` route in info.yml; config schema and permissions shipped, no Drush.

Key facts:
- Adjustment type **`vado_discount`** declared in
  `commerce_vado.commerce_adjustment_types.yml` (`has_ui: true`, `weight: 10`) — bundle discounts
  appear as their own adjustment on the order, separate from promotions.
- Permissions:

  | Permission | `restrict access` |
  |---|---|
  | `access vado administration pages` | — |
  | `administer commerce_vado_group` | **true** |

- Hooks in `commerce_vado.module`:
  - `commerce_vado_form_commerce_order_item_add_to_cart_form_alter()` — injects the add-on
    selection into the Add to Cart form;
  - `commerce_vado_form_alter()` — broader form adjustments;
  - `commerce_vado_order_has_item(OrderInterface $order, OrderItem $orderItem)` — helper used to
    avoid adding a duplicate add-on;
  - `commerce_vado_views_data_alter()` + `commerce_vado_preprocess_views_view_field()` — expose and
    format add-on data in Views;
  - `commerce_vado_entity_type_build()` — adjusts the entity type definitions involved.
- `commerce_vado.links.action.yml` provides the admin action links; `commerce_vado.post_update.php`
  carries upgrade steps — run `drush updatedb` after upgrading from 2.x.

```bash
drush role:perm:add store_manager 'access vado administration pages'
drush cget commerce_vado.settings 2>/dev/null || echo 'no module-level settings object'
```
