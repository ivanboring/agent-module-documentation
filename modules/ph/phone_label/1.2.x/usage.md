<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Phone Label extends core's telephone field with an optional label stored next to the number, so "+44 20 7946 0958" can be rendered as "Reception".

---

Core's `telephone` field stores a number and nothing else. The moment a site needs two numbers on a contact — a switchboard and a direct line, or a daytime and an out-of-hours number — the display becomes ambiguous, and the usual workarounds are a second field per number or a paragraph type, both of which are heavier than the problem.

This module supplies the three pieces that make a field type: `PhoneLabelItem` (the field type, extending core's telephone item with a label property), `PhoneLabelDefaultWidget` (a widget with both inputs), and `PhoneLabelFormatter` (which renders the label). Adding it is a field-type choice on a new field, not a setting on an existing one.

That last point matters for planning. Because it is a distinct field type rather than a third-party setting on core's, converting an existing `telephone` field means adding a new field and migrating the values — there is no in-place upgrade. Decide before content exists, or budget for the migration.

The scope is exactly three classes and no configuration page, which is the right size for what it does.

---

- Label a telephone number.
- Distinguish a switchboard from a direct line.
- Store several labelled numbers on one entity.
- Render "Reception" instead of a bare number.
- Add a label input to a phone widget.
- Avoid a paragraph type for two phone numbers.
- Avoid one field per phone number.
- Choose the field type when creating the field.
- Plan a migration from core telephone fields.
- Display labelled numbers on a contact page.
- Keep the label optional.
- Use core's telephone validation.
- Add labelled phone numbers to a user profile.
- Add labelled phone numbers to a taxonomy term.
- Keep the field configuration simple.
- Format the label and number together.