<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Calculation Fields (calculation_fields) — agent index

Form element evaluating a **mathematical expression** over other fields' values. Submodules
`calculation_fields_example`, `webform_calculation_fields` (+ its examples).
`administer calculation_fields configuration` is `restrict access: true` — appropriate, a stored
expression is **stored logic**. Version **1.0.4**. Core requirement `^9 || ^10 || ^11`.

**Why an expression rather than code:** the alternatives are browser JavaScript (fast, untrusted)
or a custom field with a hard-coded `preSave` (a developer whenever the formula changes — and
formulas change, because they are **business rules**).

**Three things to establish before relying on it:**
1. **Where evaluation happens.** A value computed in the browser is a value the **submitter
   controls**. Anything that matters — a price, an eligibility score — must be **recomputed
   server-side on submission**, whatever the widget shows.
2. **How the expression is evaluated.** A real expression parser is the right implementation;
   anything reaching **`eval()`** would make that permission equivalent to code execution. Confirm
   rather than assume, whichever way it goes.
3. **Numeric behaviour.** **Floating point is wrong for money** — a total computed as a float and
   stored as currency will eventually be a penny out, and someone will notice.
