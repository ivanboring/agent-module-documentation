<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Fee (commerce_fee) — agent index

UI for defining **fees** — surcharges applied to an order under conditions, the mirror image of
Commerce **promotions** (same machinery, positive adjustment instead of negative). Requires
`commerce`, `commerce_order`, `inline_entity_form`, core `options`. Version **1.1.0**.
Core requirement `^10.2 || ^11`.

**What it replaces:** custom order processors, one per fee, with conditions in code — needing a
developer every time an amount changes. Fees are commercial decisions made by **finance**, not
engineering.

**Three things about fees rather than the module:**
1. **Tax treatment is jurisdiction-specific and not the module's job.** Whether a fee is itself
   taxable, and at what rate, belongs to the site's tax configuration and its accountant. Getting
   it wrong is a **compliance** problem, not a display bug.
2. **Disclosure is regulated.** Surcharges appearing only at the final step are restricted or
   banned in many markets, and **card surcharges specifically are capped or prohibited** in the EU
   and elsewhere. *When* a fee becomes visible is a legal question.
3. **Adjustments must be reproducible.** A fee whose condition later changes must not silently
   alter historic orders — check adjustments are **stored on the order**, not recalculated at
   display time.
