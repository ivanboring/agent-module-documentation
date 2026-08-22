# Commerce Shipping Product Exclude — manual setup guide

**Commerce Shipping Product Exclude** (`commerce_shipping_product_exclude`) lets
you mark that **specific products or product variations cannot ship by specific
shipping methods**. It's the answer to problems like "this hazardous item can't go
by air" or "this oversized product can't use the standard courier": you flag the
disallowed methods on the product, and when such a product is in the cart those
methods disappear from the checkout options. It depends on **Commerce**
(`commerce`) and **Commerce Shipping** (`commerce_shipping`).

It works by combining two pieces. First, it adds a Commerce **field type** —
"Exclude Shipping Method" — that you attach to your products and/or variations, so
each product can list the methods it must not use. Second, it adds a Commerce
shipping **condition** — "Allow to exclude From Shipping" — that you enable on each
method you want to be excludable. At checkout, any method excluded by *any* item in
the cart is removed from the customer's choices.

This is a shipping‑rules enhancement with no payment or access‑control role of its
own. It is minimally maintained but covered by Drupal's security advisory policy.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable the
   module.

This module has **no central settings page**. You set it up by adding a field to
your products and enabling a condition on your shipping methods, described in "How
to use it" below.

## How to use it

Setting it up is a three‑part process — add the field, enable the condition, then
choose exclusions per product:

1. **Add the exclusion field.** On the product type and/or product‑variation type
   (**Commerce → Configuration → Product types → Manage fields**), create a new
   field of type **Exclude Shipping Method**. Set its cardinality to
   **Unlimited** so a product can list several excluded methods.
2. **Make methods excludable.** For every shipping method you want to be
   eligible for exclusion, edit it under **Commerce → Configuration → Shipping
   methods** and enable the **Allow to exclude From Shipping** condition. Only
   methods with this condition enabled can be excluded.
3. **Set exclusions per product.** Edit an individual product (or variation) and,
   in the exclusion field you added, select the shipping method(s) that must not
   be offered when this product is in the cart.

**How product vs. variation is resolved:** the condition checks the variation's
exclusion field first. If that field is empty (or not set), it falls back to the
parent product's field. So a value set on the variation overrides the value set on
the product.

Once configured, whenever a customer's cart contains a product that excludes a
method, that method is not shown at checkout.
