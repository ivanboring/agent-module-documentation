<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Drupal AlternativeCommerce / Basket (basket) — agent index

A self-contained online store — cart, orders, currency, delivery, payment — **not** built on
Drupal Commerce. Dependencies: core `node`, `token`, `views` and **`scss_compiler`**. PHP 8.1+.

> Documented from source in this wave: `drush en basket` reported FAILED on a bare Drupal 11.4
> site (`wave-prepare` manifest), so the runtime surface was not verified live. The likely cause
> is the `scss_compiler` dependency (a separate project from the `scss` module documented in
> wave 54) plus the store's own install requirements.

Key facts:
- Core classes in `src/`: `Basket`, `BasketCart`, `BasketAccess`, `BasketCurrency`, `BasketCron`,
  `BasketExport`, plus `Admin/` and `Ajax/` namespaces — the store logic is bespoke, so Commerce
  knowledge does not transfer.
- `basket.permissions.yml` is **grouped** (the file is organised by `group:` — Orders first) and
  splits order rights finely, e.g. order access, edit-status, **edit financial status**, and
  access to order filter field settings. Granting "edit status" without "edit financial status" is
  a supported separation.
- 17 routes in `basket.routing.yml`; admin screens live under the module's own paths rather than
  Drupal's usual commerce paths.
- Companion modules extend it per carrier/payment provider — e.g. the `novaposhta` module
  (project `basket_novaposhta`, documented in this repo), whose translation path
  `modules/basket/%project/…` shows Basket add-ons are expected to live under the Basket directory.
- Styling depends on `scss_compiler`: the storefront CSS is compiled from Sass at request time, so
  that module must be installed and working or the shop renders unstyled.

Ecosystem note: the project is primarily maintained for the Russian/Ukrainian Drupal community;
much of the upstream documentation is not in English.
