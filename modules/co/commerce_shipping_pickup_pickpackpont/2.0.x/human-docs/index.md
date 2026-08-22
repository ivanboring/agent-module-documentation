# Commerce Shipping Pickup PickPackPont — manual setup guide

**Commerce Shipping Pickup PickPackPont** (`commerce_shipping_pickup_pickpackpont`)
adds **Pick Pack Pont pickup‑point delivery** for Hungary to Drupal Commerce. At
checkout the customer chooses a Pick Pack Pont collection point (átvételi pont)
from the Hungarian pickup network, and that choice becomes part of the order's
shipping address. It is a provider that builds on the
[Commerce Shipping Pickup API](../../commerce_shipping_pickup_api/1.0.x/human-docs/index.md)
framework, which it requires.

Pick Pack Pont uses an **embedded online selector** so shoppers can find and pick
a nearby point during checkout. The module obtains pickup‑point data from the
PickPackPont service. Full Hungarian localization is installed automatically.

This provider registers a Pick Pack Pont pickup shipping method plugin under
Commerce Shipping. It has no access‑control role of its own. Because the
integration talks to the carrier and shares parcel/delivery data with it, treat
any API credentials it needs as **secrets** and keep provider traffic over HTTPS.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer, enable it, and
   add the checkout pane.
2. [Configuration](configuration/index.md) — add the Pick Pack Pont shipping
   method and enter any credentials it requires.

## Where it lives in the admin menu

Pick Pack Pont plugs into Drupal Commerce Shipping:

- **Commerce → Configuration → Checkout flows** — add the pickup‑capable
  **Shipping information** pane (summary: *Supports pickup*).
- **Commerce → Configuration → Shipping methods** — add a shipping method that
  uses the Pick Pack Pont pickup plugin.

There is no separate module settings page; the options live on the shipping
method itself, described in [Configuration](configuration/index.md).
