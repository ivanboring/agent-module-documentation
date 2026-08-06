<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Features Permissions (features_permissions) — agent index

Turns role permissions into **separate exportable config entities**, so a Feature can carry the
permissions it needs without carrying whole roles. Requires **`features`**. Package `Development`.
Version **1.2.0**. Core requirement `^10.0 || ^11.0`.

**The problem it solves:** permissions live **on the role**, so exporting them means exporting the
**entire role** — which overwrites every other permission that role holds on the target. Installing
a Feature can therefore **silently strip permissions another Feature granted**, and two Features
that both touch the editor role cannot coexist.

**This is security-relevant configuration, and review discipline should match.** A permission grant
arriving through a Feature is a **privilege change that looks like a routine deployment** — read
these diffs with the attention a role change gets, and apply the same care to who may commit them.

**Two further notes:**
- **`features` is a Drupal 7-era workflow** that core's configuration management largely replaced —
  most relevant to sites already committed to it, not to new builds.
- **An export is a snapshot of an intention.** A permission entity granting something the target's
  role should not have **will grant it on import**, and config import does not ask.

Install note: enable `features` and `features_ui` first — enabling `features_permissions` against a
bare `features` fails with *Route "features.assignment_alter" does not exist*.
