<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Product Add On (commerce_pado) — agent index

Adds other products as checkboxes to a product's Add to Cart form. Configuration lives on the
**entity view display**. No routes, no permissions, no Drush; config schema shipped.
Requires `commerce_cart` + `commerce_product`.

Key facts:
- `hook_form_entity_view_display_edit_form_alter()` + `commerce_pado_entity_view_display_form_validate()`
  add the add-on settings to a product's **view display** form — so the setting is per
  bundle **and per view mode**, and exports in `core.entity_view_display.*`.
- `hook_entity_type_build()` adjusts the commerce entity type definitions the module relies on.
- `PadoLazyBuilders` (service in `commerce_pado.services.yml`) builds the add-on checkboxes into
  the Add to Cart form via a lazy builder, keeping the form cacheable.
- Templates + theme suggestions:

  | Template | Suggestion hook |
  |---|---|
  | `commerce-pado-add-to-cart-form.html.twig` | — |
  | `commerce-pado-addon-product-label.html.twig` | `commerce_pado_theme_suggestions_commerce_pado_addon_product_label()` |
  | `commerce-pado-addon-product-variation-label.html.twig` | `commerce_pado_theme_suggestions_commerce_pado_addon_product_variation_label()` |

- Each ticked add-on is added as its **own order item**, so pricing, stock, tax and fulfilment
  behave exactly as for a normally purchased product.

```bash
# Inspect the add-on settings on a product display:
drush cget core.entity_view_display.commerce_product.default.default --format=yaml | head -40
```
