<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Display Selected and Unselected provides two field formatters that render every allowed value of a list field — not just the chosen ones — visually indicating which options are selected and which are not.

---

It supports List (text), List (float) and List (integer) fields. When the field's "Allowed number of values" is 1 the options render as radio elements; otherwise they render as checkboxes. Two formatters are offered: "Display selected and unselected values" (outputs the option labels) and "Display selected and unselected keys" (outputs the option keys). Rendering is driven by four theme hooks (`display_selected_and_unselected_{values,keys}_{checkbox,radio}`) with Twig templates you can override for custom markup.

The module is purely presentational: it has no routes, permissions, services, configuration UI or settings — you simply pick one of its formatters on a content type's Manage display tab and save. Use it where you want to show a reader the full set of options with the current selection highlighted (survey-style read-only display), rather than only the selected values.
---
- Show all options of a checkbox list with selected ones ticked.
- Display an unselected/selected overview of a List (text) field.
- Render a single-value list field as read-only radios.
- Render a multi-value list field as read-only checkboxes.
- Output the option labels via the "values" formatter.
- Output the option keys via the "keys" formatter.
- Present survey answers showing every choice and what was picked.
- Highlight remaining (unselected) options to a reader.
- Override the Twig templates to customize the HTML output.
- Style selected vs unselected states with your own CSS.
- Use on List (integer) fields for numeric option sets.
- Use on List (float) fields for decimal option sets.
- Configure the formatter per view mode on Manage display.
- Show a feature matrix where each allowed value is a feature.
- Display eligibility criteria with met/unmet options.
- Avoid custom preprocess code for "show all options" displays.
- Present a checklist-style read-only field on a node.
- Reuse the same field with different formatters across view modes.
