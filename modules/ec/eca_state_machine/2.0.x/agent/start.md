<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# ECA State Machine (eca_state_machine) — agent index

Bridges **ECA** (event-condition-action automation, the successor to Rules) and **State Machine**
(states and legal transitions — what Drupal Commerce uses for order and payment state).
Requires `eca (^2 || ^3)` and `state_machine`. Submodule `eca_state_machine_example`.
Version **2.0.3**. Core requirement `^10.4 || ^11`.

**Why the pair matters:** State Machine is precise about what may follow what and deliberately
says nothing about side effects. ECA expresses side effects but has no notion of legal
transitions. Together: *"when an order moves to fulfilment, if the customer is in the EU, send this
notification and set that field"* — a sentence a business analyst can write, and neither module can
express alone. State transitions become ECA **events**; ECA gains transition **actions**.

**The caution applies to all automation-by-configuration:**
- the logic lives in **configuration, not code**, so it never appears in a code review — export the
  models with config and review them as you would review code;
- a model that fires on a transition and causes another transition can **loop**. Test for it.
