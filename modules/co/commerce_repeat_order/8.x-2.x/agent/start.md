<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Repeat Order (commerce_repeat_order) — agent index

Turns a **past order back into a cart**. Version **8.x-2.4**. Core `^9 || ^10 || ^11`.
Depends on `commerce`, `commerce_cart`. Permission: `commerce repeat order admin access`.

High-value small feature — converts an existing customer with almost no friction.

**The design question is what "the same order" means once the catalogue moves on:** discontinued
products, changed prices, out of stock, restructured variations. Silently dropping items gives the
wrong cart; silently keeping old prices is a pricing error; failing on any change makes it useless.
**Check each case before enabling on a changing catalogue.**

**Ownership is the check that matters** — the permission covers administration, not "does this
order belong to the person asking".

If the requirement is recurring **delivery** rather than convenient reordering, that is a
subscriptions module.