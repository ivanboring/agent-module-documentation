<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Drupal AlternativeCommerce ("Basket") is a self-contained online store for Drupal — cart, orders, currencies, delivery and payment — built as its own system rather than on top of Drupal Commerce, aimed at sites that want a shop without the Commerce stack.

---

Basket implements the store itself: `BasketCart` for the cart, order entities with their own admin screens, `BasketCurrency` for currency handling, `BasketCron` for scheduled work, `BasketExport` for data export, and `BasketAccess` for its permission model. Permissions are grouped by area in `basket.permissions.yml` — Orders first, with separate permissions for viewing orders, editing an order's status, editing its *financial* status and configuring order filter fields, which is a finer-grained split than most Drupal shops offer. Delivery integrations ship as separate projects (the Nova Poshta module documented elsewhere in this repo is one, and its info file points its translations at `modules/basket/%project/…`, showing the intended install layout). Dependencies are modest — core `node`, `token`, `views` plus **`scss_compiler`**, which means the store's styling is compiled from Sass at runtime rather than shipped as CSS. PHP 8.1+ is required. The project's centre of gravity is the Russian/Ukrainian Drupal community, so much of the documentation and UI translation is in those languages.

---

- Run an online store without adopting Drupal Commerce.
- Manage orders from a dedicated admin area.
- Separate who may change an order's status from who may change its financial status.
- Support multiple currencies in one store.
- Export order data for accounting.
- Add Nova Poshta or another carrier via a companion module.
- Give a small shop a lighter stack than Commerce.
- Configure which fields appear in the order filter.
- Run scheduled store maintenance through cron.
- Build a catalogue from ordinary Drupal nodes.
- Style the storefront from Sass sources.
- Delegate order handling to a fulfilment team by permission.
- Sell from a site whose editors already know Drupal nodes.
- Support Ukrainian and Russian language storefronts.
- Keep cart state server-side.
- Report on orders through Views.
- Add custom order statuses.
- Integrate a regional payment provider.
- Migrate a simple shop into Drupal.
- Avoid the learning curve of the Commerce entity model.
