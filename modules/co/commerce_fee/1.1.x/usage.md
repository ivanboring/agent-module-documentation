<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce Fee adds a user interface for defining fees — surcharges applied to an order under configurable conditions, the mirror image of Commerce's promotions.

---

Drupal Commerce models a promotion as an offer plus conditions, applied to an order as a negative adjustment. Fees are the same machinery pointing the other way: a card surcharge, a small-order handling charge, a delivery surcharge for a remote postcode, a booking fee, an environmental levy. Without a fee UI these are built as custom order processors, one per fee, each with its own conditions written in code and each needing a developer when the amount changes — which it does, because fees are commercial decisions made by finance rather than engineering. This module supplies the interface, requiring `commerce`, `commerce_order`, `inline_entity_form` and core `options`, version **1.1.0** on core `^10.2 || ^11`. Three things about fees rather than about the module. **Tax treatment is jurisdiction-specific and is not the module's job**: whether a fee is itself taxable, and at what rate, is a question for the site's tax configuration and its accountant, and getting it wrong is a compliance problem rather than a display bug. **Disclosure is regulated** in many markets — surcharges that appear only at the final step are restricted or banned outright, and card surcharges specifically are capped or prohibited in the EU and elsewhere — so the timing of when a fee becomes visible is a legal question. And **order adjustments must be reproducible**: a fee applied by a condition that later changes must not silently alter historic orders, so check that adjustments are stored on the order rather than recalculated at display time.

---

- Add a card surcharge.
- Apply a small-order handling fee.
- Charge a remote delivery surcharge.
- Add a booking fee.
- Apply an environmental levy.
- Let finance change a fee without a deploy.
- Add a fee under conditions.
- Charge a rush-order fee.
- Apply a fee to a payment method.
- Add a packaging charge.
- Charge a fee by shipping zone.
- Apply a minimum-order surcharge.
- Add a service charge.
- Charge a fee per order type.
- Apply a fee to a customer group.
- Add a weekend delivery surcharge.
- Model a fee like a promotion.
- Show fees as order adjustments.
