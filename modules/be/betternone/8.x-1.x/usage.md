<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Better None improves the default "- None -" empty option shown by Drupal's options/select field widgets, letting editors set a custom empty label per widget.

---

The module hooks `hook_options_list_alter`, `hook_field_widget_third_party_settings_form` and `hook_field_widget_settings_summary_alter`. For any widget extending `OptionsWidgetBase`, `BetterNoneAlterer` (built from the field definition + widget) adds a third-party settings form so you can override the empty option text, alters the rendered options list to apply that label, and shows the choice in the widget settings summary. It is a pure form-display enhancement with no routes, permissions, services or config entities of its own — settings ride along in the form display's third-party settings.

There is no admin page; you configure it in Manage form display for the relevant field widget. No security surface.

---
- Replace "- None -" with a custom empty label on a select widget
- Set a friendlier empty prompt like "Choose a category"
- Hide/relabel the empty option on a radios widget
- Configure the empty label per field widget in Manage form display
- See the chosen empty label in the widget settings summary
- Apply a different empty label on different content types
- Improve UX on optional single-value reference fields
- Keep an empty option but give it meaningful text
- Adjust the empty option on taxonomy term select widgets
- Localise the empty option wording
- Give required-looking fields a clearer empty prompt
- Standardise empty-option text across a content type
- Reduce editor confusion over the default "- None -"
- Preview the empty label in the form display summary
- Apply per-form-mode empty labels
- Keep the fix scoped to options-based widgets only