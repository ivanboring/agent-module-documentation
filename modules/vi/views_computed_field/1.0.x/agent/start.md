<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Views Computed Field (views_computed_field) — agent index

A Views field computing a value from a **formula over other fields** in the view.
Version **1.0.0**. Core `^9 || ^10 || ^11`. No dependencies. No routes/permissions of its own —
configured in the Views UI (needs view-admin permission).

**Evaluation is safe by construction — cite as a positive.** The formula is run through
**Symfony ExpressionLanguage**, *not* `eval()`. Only `round`/`ceil`/`floor`/`min`/`max`/`avg` are
registered, so a formula cannot call arbitrary PHP. Field names are validated against the view's
field handlers first. Same principle as `math_field`'s hand-written parser; input is admin-only.

Options: hide-empty (empty → 0), error handling (show / zero / hide).

Computed in PHP at render time from already-rendered fields → **display-only**, cannot be sorted or
filtered in the database.