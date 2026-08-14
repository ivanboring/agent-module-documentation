<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# SynCommerce (syncommerce) — agent index

**JS admin app + JSON endpoints for browsing and editing Drupal Commerce products and variations.**

- **Version:** 1.x (dev-1.x checkout)
- **Core:** ^9 || ^10 || ^11 · **Depends:** commerce
- **Controller:** `SyncommerceController` — `build` (UI page), `list`, `updateProduct`, `updateVariation`.
- **Routes:** `/syncommerce/products` (GET UI), `/syncommerce/products_list` (POST), `/syncommerce/updateProduct` (POST), `/syncommerce/updateVariation` (POST).
- **Permission defined but UNUSED:** `administer syncommerce configuration`.

**Security (flag to operators):** every route — including the mutating `updateProduct` / `updateVariation` — is gated only by `_permission: 'access content'`, which anonymous holds by default, so an unauthenticated user can alter product titles/catalog/status and variation price/stock. The module's own admin permission is never applied. Restrict these routes to a Commerce-admin permission before deployment.

See [api/syncommerce.md](api/syncommerce.md)
