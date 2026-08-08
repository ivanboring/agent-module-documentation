<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce Shipping Labels provides an API for generating shipping labels with Commerce Shipping.

---

Commerce Shipping Labels provides an API for generating shipping labels within Drupal Commerce Shipping —
a framework for producing printable shipping labels for orders (including a `commerce_shipping_label_zebra`
submodule for Zebra label printers). It depends on Commerce Shipping, in the Commerce (shipping) package.

Use it to generate shipping labels for Commerce orders. It is an e-commerce/fulfillment feature. Where label
generation involves a carrier's API (rates/labels), store any **carrier API credentials as secrets** and
operate over HTTPS; generated labels contain customer addresses (personal data), so handle/store them
appropriately. It has no access-control role. Configure the label generation and printer integration.

---

- Generate shipping labels.
- Provide a label-generation API.
- Support Zebra label printers.
- Depend on Commerce Shipping.
- Produce printable labels for orders.
- Store carrier API credentials as secrets.
- Operate over HTTPS.
- Handle labels' address PII appropriately.
- Have no access-control role.
- Configure label generation.
- Print shipping labels.
- Handle fulfillment labels.
- Generate order labels.
- Configure the printer integration.
- Produce labels.
- Handle shipping labels.
- Configure labels.
- Generate labels.
- Print labels.
- Handle label API.
