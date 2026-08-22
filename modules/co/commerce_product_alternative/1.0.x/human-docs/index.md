# Commerce Product Alternative — manual setup guide

**Commerce Product Alternative** (`commerce_product_alternative`) lets shoppers
swap a product variation in their cart for a different one — **without removing and
re-adding items**. Store managers define which variations count as valid
alternatives for each other, then expose "swap" links in any cart view; clicking a
link replaces the underlying order item in place, so the shopper keeps their spot
in checkout.

The problem it solves shows up whenever you sell products with meaningfully
different variations — formats, bundles, sizes, or configurations — and want a
customer to change their mind about which one they're buying without the friction
of deleting the line and starting over. Under the hood it adds a Commerce
**entity trait** to variation types plus an AJAX switch flow and a dedicated Views
field for the swap links.

It depends on Commerce's **Commerce**, **Product**, **Order**, **Cart**, and
**Log** modules and requires **Drupal 11**. It provides its own permissions but
has no central settings form — setup is done on the variation type, on individual
variations, and in your cart View (see "How to use it").

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install the module with Composer and
   enable it.

There is **no configuration page** for this module — setup happens on your
variation type, your variations, and your cart View, described in "How to use it"
below.

## Where it lives in the admin menu

Commerce Product Alternative adds no settings page. You use it from **Commerce →
Configuration → Product variation types** (to enable its trait and assign
alternatives) and from your cart **View** (to add the swap-links field).

## How to use it

1. Go to **Commerce → Configuration → Product variation types**, edit the relevant
   variation type, and enable the **Alternative Variations** trait.
2. Edit the individual product variations and assign which other variations are
   valid **alternatives** for each one.
3. Open your **cart View** and add the **Alternative variations** field from the
   order-item fields.
4. On the storefront, shoppers now see swap links in the cart and can switch
   between the alternatives via AJAX — no full page reload, no manual
   remove/re-add.

Grant the module's permissions to the appropriate roles at **People → Permissions**
so the right users can manage alternatives.
