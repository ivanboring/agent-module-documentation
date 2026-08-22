# Commerce Shipping Pickup GLS CsomagPont — manual setup guide

**Commerce Shipping Pickup GLS CsomagPont** (`commerce_shipping_pickup_gls_csomagpont`)
adds **GLS CsomagPont pickup‑point delivery** for Hungary to Drupal Commerce. At
checkout the customer picks a GLS CsomagPont collection point as the delivery
location, and that choice becomes part of the order's shipping address. It is a
provider that builds on the
[Commerce Shipping Pickup API](../../commerce_shipping_pickup_api/1.0.x/human-docs/index.md)
framework, which it requires.

GLS CsomagPont uses an **embedded map‑based selector** so shoppers can find a
nearby point visually. Because of that, the map needs a **Google Maps JavaScript
API key** to work — without a key the map cannot render. The module ships with
full Hungarian localization, installed automatically.

This provider registers a GLS pickup shipping method plugin under Commerce
Shipping. It has no access‑control role of its own. Any credentials the
integration needs (the Google Maps key, and any GLS API credentials) should be
treated as secrets and kept out of version control, and provider traffic should
run over HTTPS.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer, enable it, and
   add the checkout pane.
2. [Configuration](configuration/index.md) — add the GLS shipping method and
   supply the Google Maps API key the map needs.

## Where it lives in the admin menu

GLS CsomagPont plugs into Drupal Commerce Shipping:

- **Commerce → Configuration → Checkout flows** — add the pickup‑capable
  **Shipping information** pane (summary: *Supports pickup*).
- **Commerce → Configuration → Shipping methods** — add a shipping method that
  uses the GLS CsomagPont pickup plugin.

There is no separate module settings page; the options live on the shipping
method itself, described in [Configuration](configuration/index.md).
