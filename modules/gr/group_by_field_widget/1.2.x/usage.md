<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Grouped by field widget renders a reference field's checkboxes **grouped under their parents**, so a term list drawn from several vocabularies or a deep hierarchy arrives organised instead of as one flat column.

---

A reference field pointing at more than one vocabulary, or at a hierarchical one, renders in core as a single undifferentiated list of checkboxes: "Health", "Cardiology", "Finance", "Payroll", "Diabetes" with nothing indicating that three of those belong under one heading and two under another. Editors then tick the wrong thing, or scroll past the option they wanted. This widget groups the options under their parent — vocabulary or parent term — which turns the same list into something scannable. It is a widget plugin in `src/Plugin` with `config/schema` for its settings, no dependencies beyond core, and no routes, permissions or configuration pages; the core requirement is `~9.0 || ^10.0 || ^11`. Because it is a widget substitution, the field type and stored values are untouched and switching back costs nothing. Note there are two schema files in the release — `config/schema/` and a stray top-level `group_by_field_widget.schema.yml` — and two licence files, which is untidy but harmless.

---

- Group taxonomy checkboxes by vocabulary.
- Show child terms under their parent.
- Make a multi-vocabulary field scannable.
- Reduce mis-tagging by editors.
- Organise a long checkbox list.
- Improve a categorisation field's usability.
- Show hierarchy in a reference widget.
- Keep the field type unchanged.
- Improve tagging accuracy.
- Group options on a webform-style field.
- Help editors find the right term.
- Reduce scrolling on a tagging field.
- Show subject areas grouped by discipline.
- Improve a faceted content model's entry form.
- Switch widget per form display.
- Support a deep vocabulary.
- Reduce editorial review corrections.
- Make a service taxonomy usable.
