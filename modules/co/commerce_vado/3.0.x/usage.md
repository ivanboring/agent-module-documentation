<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce Variation Add On attaches product **variations** to other variations as children: pick a base variation and its permitted add-ons are offered in the Add to Cart form, with an adjustment type for discounting the bundle.

---

Where the product add-on module works at product level, Vado works at variation level — the right granularity when a specific size or colour has its own compatible extras. It ships a `vado_discount` **commerce adjustment type** (`commerce_vado.commerce_adjustment_types.yml`, with a UI and weight 10) so bundled add-ons can be discounted as a distinct, reportable adjustment on the order. `hook_form_commerce_order_item_add_to_cart_form_alter()` injects the add-on selection into the Add to Cart form, `commerce_vado_order_has_item()` checks whether an order already contains a given order item, `hook_views_data_alter()` and a `views_view_field` preprocess expose and format add-on data in Views, and `hook_entity_type_build()` adjusts the entity definitions involved. Two permissions gate administration: `access vado administration pages` for the module's admin screens and the restricted `administer commerce_vado_group` for managing add-on groups, which is how variations are collected into reusable sets. Post-update hooks handle upgrades from earlier versions.

---

- Offer add-ons that depend on the exact variation chosen.
- Attach a compatible accessory to one size of a product.
- Group variations into reusable add-on sets.
- Discount a bundle with a dedicated adjustment type.
- Report on bundle discounts separately from promotions.
- Show add-on variations in the Add to Cart form.
- Expose add-on relationships in Views.
- Prevent duplicate add-ons in a single order.
- Restrict add-on group administration to trusted roles.
- Let editors manage add-on groups from an admin screen.
- Offer colour-specific accessories.
- Bundle a subscription with a specific hardware variation.
- Apply a discount when a parent and child are bought together.
- Keep add-on variations as ordinary purchasable items.
- Migrate from an older Vado version with post-update hooks.
- Present add-ons distinctly from the base variation in listings.
- Support several add-on groups per variation.
- Track add-on inventory as normal variation stock.
- Build a configurator-style purchase flow.
- Report add-on attach rates through Views.
