<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity Browser Validation makes the Entity Browser entity-reference widget show a red error highlight when its field fails validation, the way core does for standard inputs.

---

Core marks failed form elements (inputs, selects, textareas) with an `error` class, but the Entity Browser widget lacks a targetable element, so validation errors did not visually flag it. This module implements `hook_field_widget_single_element_entity_browser_entity_reference_form_alter` to add a `name` attribute to the widget's wrapper (built from the field name and the form's `#parents`) so the error can target it, and attaches a small CSS library (`entity_browser_validation/validation`) that styles the flagged widget in red.

There is no configuration, route, permission, or service — enabling the module is the entire setup. It only affects fields using the Entity Browser "entity reference" widget. Because the highlight is just an `error` class (as core uses), the styling can be overridden in a theme. The maintainer notes the feature ideally belongs in Entity Browser itself, which would make this module obsolete.

---

- Highlight a failing Entity Browser widget in red on validation
- Match core's error styling for entity-reference fields
- Give required Entity Browser fields a visible error state
- Help editors spot which media/reference field failed
- Add a targetable name attribute to the entity browser wrapper
- Improve form UX on multi-field content edit forms
- Apply automatically to entity-browser entity-reference widgets
- Enable with zero configuration
- Override the error styling from a custom theme
- Work alongside any Entity Browser display (modal, iframe, etc.)
- Flag empty required media fields on submit
- Reduce confusion when a save fails without visible cause
- Support node/media/any entity form using the widget
- Keep behaviour consistent with core field validation cues
- Remove the module cleanly once Entity Browser adds the feature
- Style the highlight to match the site's design system
