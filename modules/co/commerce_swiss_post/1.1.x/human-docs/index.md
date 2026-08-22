# Commerce Swiss Post — manual setup guide

**Commerce Swiss Post** (`commerce_swiss_post`) provides a **Swiss Post shipping method** for
Drupal Commerce and generates shipping labels. It lets stores that ship within or from
Switzerland offer Swiss Post delivery options and rates at checkout, and produce the
corresponding Swiss Post labels.

It solves shipping for Swiss stores: rather than quoting flat rates and preparing labels by
hand, the module integrates Swiss Post as a Commerce shipping method. It is a shipping
feature with no access-control role of its own. If it calls the Swiss Post API for rates or
labels, be mindful that customer address data is sent to the carrier and that any API
credentials are secrets — see "How to use it" below.

The module targets Drupal 10.1+ and 11. Note it is currently **seeking co-maintainers**, so
weigh its maintenance status for a production store.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable the module.

There is **no dedicated settings page** for this module — you set it up as a Commerce
shipping method, described in "How to use it" below.

## Where it lives in the admin menu

Swiss Post is configured as a shipping method under **Commerce → Configuration → Shipping
methods** (`/admin/commerce/shipping-methods`).

## How to use it

1. Go to **Commerce → Configuration → Shipping methods**
   (`/admin/commerce/shipping-methods`) and click **Add shipping method**.
2. Choose the **Swiss Post** plugin.
3. Enter any required Swiss Post **API credentials** for rates and labels. Treat these as
   secrets: store the values in environment variables rather than committing them to exported
   configuration. With DDEV you can use `ddev dotenv set .ddev/.env --swisspost-...=<value>`
   and keep `.ddev/.env` out of version control; where the field supports it, reference the
   value through a [Key](https://www.drupal.org/project/key) entity. All carrier calls should
   be over HTTPS.
4. Configure the delivery options/rates you want to offer and save the shipping method.
5. Because using the carrier sends customer **address data** to Swiss Post, make sure that is
   consistent with your privacy policy.

At checkout, customers shipping to eligible destinations will see the Swiss Post option and
its rates; you can generate Swiss Post shipping labels for the resulting shipments.
