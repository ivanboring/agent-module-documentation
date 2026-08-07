<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce Profile Pane adds a checkout pane for editing a Profile entity during checkout.

---

Checkout is the one moment a customer is reliably willing to give you information, and the one place a store can ask without it feeling like an interruption. A profile pane uses that: dietary requirements with a food order, a delivery instruction, a membership number, a marketing preference — collected in the flow rather than in a separate form nobody fills in later.

Doing it through the Profile module rather than as order fields is the right modelling. A profile persists across orders, so a returning customer is not asked again, and the data lives on the customer rather than being copied into every order they place.

**That persistence is exactly why the data question matters.** Anything collected here is stored against a person indefinitely, so it needs the same treatment as any other personal data: a reason for collecting it, a retention position, and a way for the customer to see and change it — which the Profile module supports and which a checkout-only form does not imply.

**And checkout is a conversion-sensitive surface.** Every field added to it costs completed orders, and a pane collecting information the business would like rather than needs is measurable revenue. Ask what happens if the field is blank; if the answer is "nothing", it does not belong in checkout.

---

- Collect information during checkout.
- Ask for dietary requirements with an order.
- Capture a delivery instruction.
- Record a membership number.
- Avoid asking a returning customer twice.
- Store data on the customer, not the order.
- Let a customer view and change their profile.
- Set a retention position for profile data.
- Justify each field collected at checkout.
- Measure the conversion cost of a field.
- Remove fields that change nothing.
- Reuse a profile across orders.
- Configure the pane's position in checkout.
- Audit personal data collected at checkout.
- Document the module's behaviour for the team.
- Review it during a site audit.
- Verify its assumptions after an upgrade.
