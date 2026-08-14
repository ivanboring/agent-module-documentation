<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
DKAN JSON Form Tweaks makes large DKAN metadata forms (generated from JSON schema) easier to work with.

---

It decorates several JSON Form Widget services — the form builder, field-type router, schema-UI handler and value handler — and adds template suggestions plus opt-in UX features: a navigation panel to jump straight to a property in a big schema, a close button that collapses all detail elements for multi-value properties, and a per-value remove checkbox so a single item in a multi-value property can be deleted. These options are enabled per content type through third-party settings injected into the entity display form edit form (for the `data` bundle).

It is an editorial/UX enhancement only: no routes, permissions, or public endpoints. Setup: enable the module, edit the form display for your `data` type, and turn on JSON Form navigation / close / remove options as desired.

---
- Add a jump-to-property navigation panel to long dataset forms.
- Collapse all multi-value detail elements with a close button.
- Remove a single value from a multi-value property.
- Enable the tweaks per content type via display settings.
- Identify JSON-form elements via added template suggestions.
- Speed up editing of large metadata schemas.
- Reduce scrolling on datasets with many properties.
- Toggle navigation on the `data` form display config.
- Toggle close-details behaviour independently.
- Toggle the multi-value remove checkbox.
- Keep the tweaks as exportable third-party settings.
- Improve editor UX without patching DKAN core.
- Theme the navigation via `dkan_json_form_navigation`.
- Theme the close button via `dkan_json_form_close_button`.
- Apply consistent form behaviour across dataset types.
- Decorate json_form builder/router/value handlers cleanly.
- Provide an alternative to DKAN issue #4335's removal need.
- Help authors manage repeatable property groups.
