<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
ECA State Machine connects ECA — the event-condition-action automation framework — to the State Machine module, so state transitions become events ECA can react to and actions ECA can perform.

---

Two mature pieces of infrastructure sit either side of this. **State Machine** models a workflow as states and legal transitions, and it is what Drupal Commerce uses for order and payment state; it is precise about what may follow what, and deliberately says nothing about side effects. **ECA** is the successor to Rules: a visual, model-driven way to express "when this happens, if that holds, do this", built by drawing a diagram in BPMN or a similar notation rather than by writing a module. Each is useful alone and the combination is where the value is — "when an order moves to *fulfilment*, if the customer is in the EU, send this notification and set that field" is a sentence a business analyst can write, and neither module can express it alone. Version **2.0.3**, requiring `eca ^2 || ^3` and `state_machine`, on core `^10.4 || ^11`, with an `eca_state_machine_example` submodule showing a working model. The caution is one that applies to all automation-by-configuration: the logic **lives in configuration, not in code**, so it does not appear in a code review, and a model that fires on a transition and causes another transition can loop. Export the models with config, review them the way you would review code, and test the loops.

---

- React when an order changes state.
- Send a notification on a transition.
- Automate a fulfilment step.
- Trigger a transition from an ECA model.
- Model a business process visually.
- Let an analyst express a workflow rule.
- Connect Commerce order states to automation.
- Set a field when a state changes.
- Log a state transition.
- Notify a team on approval.
- Automate a payment follow-up.
- Trigger an email on rejection.
- Move an entity through states automatically.
- Replace custom hook code with a model.
- Support a subscription lifecycle.
- Escalate a stalled process.
- Coordinate two workflows.
- Automate a document approval chain.
