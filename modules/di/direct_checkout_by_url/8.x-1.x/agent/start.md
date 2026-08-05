<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Direct checkout by URL (direct_checkout_by_url) — agent index

Builds a cart from URL parameters and redirects into checkout. Requires Commerce's
`commerce_product`, `commerce_order`, `commerce_cart`, `commerce_checkout`. Endpoint
`/direct-checkout-by-url` behind `use direct checkout`; settings behind
`administer direct checkout by url`. Version **8.x-1.5**. Core requirement `^8 || ^9 || ^10 || ^11`.

**Permission declaration defect (verified).** The administrative permission is declared:
```yaml
administer direct checkout by url:
  restrict_access: TRUE      # underscore — Drupal reads `restrict access` (space)
```
Checked against the `user.permissions` service: it reports **`restricted=no`**. Consequence is
cosmetic rather than exploitable — the permission must still be granted deliberately — but the
warning that should appear beside it on the permissions page does not.

**Two design points:**
1. **A URL that fills a cart is a URL anyone can craft.** Prices, quantities and any discount must
   be resolved **server-side from the product**, never taken from the link.
2. **Campaign links are shared and archived — treat them as permanently public.** A link carrying a
   discount is a discount code with no expiry unless one is designed in.

Related: `commerce_cart_links` (wave 71) does the cart-manipulation half with a referer check and
its own permission.
