<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce Repeat Order lets a customer turn a past order back into a cart.

---

For anything bought regularly — consumables, supplies, a standing grocery list — the second purchase should not cost the same effort as the first. "Order again" turns a completed order into a populated cart, which is one of the highest-value small features in commerce because it converts an existing customer with almost no friction.

**Getting it right means deciding what "the same order" means when the catalogue has moved on**, and that is where implementations differ. A product may have been discontinued, changed price, gone out of stock, or had its variations restructured. Silently dropping unavailable items produces a cart that is not what the customer asked for; silently keeping the old price is a pricing error; failing loudly on any change makes the feature useless. Check what this module does for each case before enabling it on a catalogue that changes.

**And the order belongs to a customer.** Repeating an order means reading a past order's contents, so whatever route or action does that must confirm the order belongs to the person asking — the permission it defines (`commerce repeat order admin access`) covers administration, not the per-order ownership check, and that check is the one that matters.

Worth pairing with a subscriptions module if the real requirement is recurring delivery rather than convenient reordering — they solve adjacent problems and are often confused.

---

- Let a customer reorder a past purchase.
- Turn a completed order into a cart.
- Reduce friction for repeat customers.
- Reorder consumables or supplies.
- Handle a discontinued product on reorder.
- Apply current prices rather than old ones.
- Handle an out-of-stock item.
- Handle restructured product variations.
- Confirm the order belongs to the customer.
- Distinguish admin access from ownership.
- Compare with a subscriptions module.
- Decide between reorder and recurring delivery.
- Show the customer what changed.
- Audit reorder behaviour after a catalogue change.
- Document this module's behaviour for the team.
- Review it during a site audit.
- Verify its assumptions after an upgrade.
