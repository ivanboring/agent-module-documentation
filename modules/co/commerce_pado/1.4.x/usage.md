<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce Product Add On lets one product offer other products as tick-box add-ons directly in its Add to Cart form — an extended warranty next to a laptop, gift wrapping next to a gift — with each ticked add-on becoming its own order item.

---

The module works through display configuration rather than new entities. `hook_entity_type_build()` adjusts the commerce entity types it needs, and `hook_form_entity_view_display_edit_form_alter()` (with a matching validate handler) adds the add-on configuration to a product's **view display**, so which products are offered as add-ons is a per-display decision that exports with the site's config. At render time `PadoLazyBuilders` builds the add-on checkboxes into the Add to Cart form, using three templates — `commerce-pado-add-to-cart-form.html.twig` for the form itself and `commerce-pado-addon-product-label.html.twig` / `commerce-pado-addon-product-variation-label.html.twig` for how each add-on is labelled — with theme-suggestion hooks so the labels can be themed per product type or variation type. A config schema covers the display settings. Because add-ons are ordinary products, they carry their own price, stock and tax treatment, and appear as separate line items in the cart, which keeps reporting and fulfilment straightforward.

---

- Offer an extended warranty as a checkbox on a product page.
- Sell gift wrapping alongside a gift item.
- Add installation or setup services to hardware products.
- Offer accessories directly on the product page.
- Upsell a care plan without a separate cart step.
- Bundle optional extras while keeping separate line items.
- Price each add-on independently of the main product.
- Track add-on stock as ordinary product inventory.
- Theme add-on labels per product type.
- Configure add-ons per view display rather than globally.
- Export add-on configuration with site config.
- Offer different add-ons in teaser and full displays.
- Show add-on variation labels distinctly from product labels.
- Keep fulfilment simple with one order item per add-on.
- Apply tax rules to add-ons individually.
- Let editors change add-ons without touching code.
- Offer a donation add-on at the point of purchase.
- Present add-ons as checkboxes rather than a separate product list.
- Report on add-on sales separately.
- Remove add-ons from a display without deleting products.
