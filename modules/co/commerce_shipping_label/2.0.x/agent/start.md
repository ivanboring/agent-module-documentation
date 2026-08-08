<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Shipping Labels — agent index

Provides an **API for generating shipping labels** with Commerce Shipping (printable labels for orders;
`commerce_shipping_label_zebra` submodule for Zebra printers). Depends on `commerce_shipping`. Version
**2.0.3**. Core `^9||^10||^11`.

E-commerce/fulfillment — if using a carrier API, store credentials as secrets + HTTPS; labels contain
address **PII** (handle appropriately). No access role.
