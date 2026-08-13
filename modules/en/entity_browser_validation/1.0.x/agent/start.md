<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity Browser Validation (entity_browser_validation) — agent index

**Adds core-style red error highlighting to the Entity Browser entity-reference widget when its field fails validation.**

- **Version:** 1.0.x
- **Core:** ^9 || ^10 || ^11
- **Dependencies:** entity_browser
- **Package:** Media
- **Mechanism:** `hook_field_widget_single_element_entity_browser_entity_reference_form_alter` adds a `name` attribute (field name + form `#parents`) to the widget wrapper and attaches the `entity_browser_validation/validation` CSS library
- **Config:** none — no routes, permissions, services, or settings

**Security:** no endpoints, no config, no data mutation; a display-only form-alter that adds a CSS class/attribute. No security-relevant surface.
