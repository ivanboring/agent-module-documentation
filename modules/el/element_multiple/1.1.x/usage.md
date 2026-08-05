<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Element Multiple provides a reusable Form API element for collecting several values of the same kind, with the add-more behaviour that Drupal's field widgets have and plain forms do not.

---

The multi-value pattern — a list of rows, an "Add another" button, remove buttons, drag handles — exists in Drupal and is tied to the **field** system. A settings form, a configuration entity form or a custom form that needs a list of email addresses, a set of API endpoints or several key-value pairs has to build it by hand, and doing so correctly is more work than it looks: the count has to live in form state, the AJAX rebuild has to preserve entered values, the wrapper needs a stable id, and the whole thing has to survive validation errors without losing what the user typed. Every project writes that once, and most write it slightly wrong — the usual symptom being an "Add another" that clears the rows above it. Packaging it as a `#type` makes it a declaration. Version **1.1.0** on core `^10 || ^11`, no dependencies and no configuration — it is infrastructure. Two things to check. **AJAX behaviour under validation errors** is the part implementations get wrong, so test adding a row after a failed submit and confirm nothing is lost. And **the element returns an array, which the consumer owns**: deciding whether empty rows are filtered, whether order is meaningful, and whether values are deduplicated belongs to the form's own submit handler, and none of those should be assumed from the element's defaults.

---

- Collect several email addresses in a settings form.
- Add an "Add another" button to a form.
- Build a list of API endpoints.
- Collect key-value pairs.
- Reuse a multi-value pattern.
- Avoid hand-rolled AJAX add-more.
- Collect several URLs in configuration.
- Build a list of allowed hosts.
- Add rows to a custom form.
- Collect several recipients.
- Build a repeatable form section.
- Avoid losing values on validation errors.
- Collect a list of identifiers.
- Add a removable row control.
- Build a configuration entity form.
- Collect several phone numbers.
- Support a variable-length input.
- Reduce form boilerplate in a module.
