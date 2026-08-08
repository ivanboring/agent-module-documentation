<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Views Computed Field adds a Views field whose value is a formula over the other fields in the view — `(field_price * field_quantity) - field_discount` — evaluated per row in PHP after the other fields have rendered.

---

Views can display fields and, with effort, sort on them, but it cannot easily show a *derived* value: a line total, an average, a percentage. The usual routes are a computed field on the entity (which then exists everywhere, not just in this view) or a preprocess hook (which is code for what should be configuration). This module makes the derived value a Views field you configure in the UI.

The evaluation choice is the thing to note, and it is the right one. The formula is **not** run through `eval()`. It is evaluated with **Symfony's ExpressionLanguage**, with a small set of math functions (`round`, `ceil`, `floor`, `min`, `max`, `avg`) registered explicitly, and the field names in the formula are validated against the view's actual field handlers before evaluation. ExpressionLanguage can only call the functions registered with it, so a formula cannot reach arbitrary PHP — the capability is bounded by construction, the same principle `math_field` applies with a hand-written parser. The input is also admin-only: writing a formula requires the permission to administer the view.

Options cover empty-value handling (treat empty as zero) and error handling (show the error, return zero, or hide the field). Because the value is computed in PHP at render time from other rendered fields, it is display-only — it cannot be sorted or filtered in the database.

---

- Compute a line total in a view.
- Multiply two fields per row.
- Show a derived percentage.
- Calculate a value without a preprocess hook.
- Avoid an entity computed field for one view.
- Use round, ceil, floor, min, max, avg.
- Combine several fields in a formula.
- Treat empty fields as zero.
- Show, zero, or hide on error.
- Keep formula evaluation sandboxed.
- Avoid eval() for a computed value.
- Configure the formula in the Views UI.
- Validate field names before evaluating.
- Restrict formula editing to view admins.
- Display a computed column in a table.
- Accept that the result is display-only.
- Add a subtotal to a report view.
- Reference fields by machine name.
- Compute an average across fields.
- Keep derived logic in the view, not the entity.