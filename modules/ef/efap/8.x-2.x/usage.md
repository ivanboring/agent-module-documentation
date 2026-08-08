<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Extra Field API (efap) defines a plugin type for extra fields.

---

Extra Field API (efap) defines a **plugin type for extra fields** — "extra fields" are pseudo-fields that
appear on an entity's manage-display and render custom output (not stored data), and efap lets developers
declare them as plugins instead of wiring `hook_entity_extra_field_info()` + `hook_entity_view()` by hand. It
is in the Code package.

Use it as a developer framework for computed/display-only fields. It is a developer/API module — the output a
plugin renders is developer-controlled, so its safety depends on that code (escape/authorize as usual); efap
itself has no content or access role. Depend on it and implement extra-field plugins.

---

- Define a plugin type for extra fields.
- Declare pseudo-fields as plugins.
- Render display-only output.
- Replace hook_entity_extra_field_info wiring.
- Serve developers.
- Provide an API framework.
- Leave output safety to the plugin code.
- Have no content/access role.
- Implement extra-field plugins.
- Handle extra fields.
- Build pseudo-fields.
- Configure displays.
- Provide extra-field plugins.
- Handle the API.
- Render extra fields.
- Depend on it from code.
- Handle the framework.
- Add extra fields.
- Configure the plugins.
- Provide the plugin type.
