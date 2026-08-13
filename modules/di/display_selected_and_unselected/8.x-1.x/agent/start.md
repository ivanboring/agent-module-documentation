<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Display Selected and Unselected (display_selected_and_unselected) — agent index

**Two field formatters that render all allowed values of a List field, marking selected vs unselected as radios (single-value) or checkboxes (multi-value).**

- **Version:** 8.x-1.x (8.x-1.1)
- **Core:** >=8
- **Package:** Fields
- **Formatters:** `DisplaySelectedAndUnselectedValuesFieldFormatter`, `DisplaySelectedAndUnselectedKeysFieldFormatter` (src/Plugin/Field/FieldFormatter)
- **Field types:** list_string, list_float, list_integer
- **Theme hooks:** `display_selected_and_unselected_{values,keys}_{checkbox,radio}` with overridable Twig templates.
- **Config:** none — assign the formatter on Manage display.

**Security:** Presentational only — no routes, permissions, services, or configuration; no user input handled beyond rendering existing field values. No security findings.
