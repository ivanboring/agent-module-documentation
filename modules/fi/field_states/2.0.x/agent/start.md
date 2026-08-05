<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Field states (field_states) — agent index

Models a field's values as **states with defined transitions**, so a value can only move where the
configuration allows. Per-field screen at `/field-states/state-machine/{field}`. Depends on core
`views` and `options`. Version **2.0.4**.
**Core requirement `^11 || ^12` — Drupal 11+ only**, reaching into a major that does not exist yet.

Permissions: `access states` (view), `admin states` (edit).

**Known bug — check this before evaluating the module.** `StateMachineForm` tests
`hasPermission('Administer transition states')` — the permission's **title**, not its machine name
`admin states`. `hasPermission()` returns FALSE for an unrecognised name, so `#editState` resolves
to false for **everyone except user 1** (who bypasses permission checks). Effect:
- **fail-closed** — nothing is exposed that should not be;
- but **`admin states` is dead**: a site that grants it sees no change.
Test as a non-uid-1 account before concluding what the module can do.

**Why the concept matters:** an options field lets an editor pick any value — right for a category,
wrong for a status. Without transitions, "a ticket may not go from *new* to *closed*" lives in a
policy document and gets broken.

Compare `state_machine` (used by Drupal Commerce, and bridged to ECA by `eca_state_machine`,
wave 71) for the established implementation of the same idea.
