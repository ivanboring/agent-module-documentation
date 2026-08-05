<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Calculation Fields adds a form element that evaluates a mathematical expression over other fields' values, with Webform integration and example submodules.

---

Forms that compute are everywhere: an order total from quantity and price, a BMI from height and weight, a score from weighted answers, a quotation from a set of options, a subtotal plus tax. Doing it without an expression element means either JavaScript that computes in the browser — fast, and not to be trusted, since the value arrives from the client — or a custom field with a `preSave` that hard-codes the formula, which means a developer whenever the formula changes, and formulas change because they are business rules. An expression evaluated from configuration puts the rule where the people who own it can see and change it. Version **1.0.4** on `^9 || ^10 || ^11`, with `calculation_fields_example`, `webform_calculation_fields` and its examples, and an `administer calculation_fields configuration` permission marked `restrict access: true` — appropriate, because a stored expression is stored logic. Three things to establish before relying on it. **Where evaluation happens**: a value computed in the browser is a value the submitter controls, so anything that matters — a price, an eligibility score — must be recomputed server-side on submission regardless of what the widget shows. **How the expression is evaluated**: a real expression parser is the right implementation, and anything reaching `eval()` would make the permission equivalent to code execution — worth confirming rather than assuming, whichever way it goes. And **numeric behaviour**: floating-point arithmetic is wrong for money, so a total computed as a float and stored as currency will eventually be a penny out and someone will notice.

---

- Compute an order total from fields.
- Calculate a score from weighted answers.
- Derive a BMI from height and weight.
- Build a quotation form.
- Compute a subtotal with tax.
- Calculate a duration from dates.
- Build a pricing calculator.
- Compute an eligibility score.
- Add a calculated field to a webform.
- Let staff change a formula without code.
- Compute a discount from quantity.
- Build a mortgage estimate form.
- Calculate a carbon footprint.
- Derive a total from repeated fields.
- Compute a fee from options chosen.
- Build a dosage calculator.
- Calculate a project estimate.
- Show a live total as a user types.
