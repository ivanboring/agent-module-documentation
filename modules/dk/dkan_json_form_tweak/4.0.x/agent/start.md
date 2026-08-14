<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# DKAN JSON Form Tweaks (dkan_json_form_tweak) — agent index

**Adds navigation, close-all and per-value removal to DKAN's JSON-schema-generated forms.**

- **Version:** 4.0.x · **Core:** ^10 || ^11 · **Depends on:** dkan, json_form_widget
- **Wiring:** decorates `json_form.builder`, `json_form.router`, `json_form.schema_ui_handler`, `json_form.value_handler`.
- **Config:** third-party settings on the `data` entity-form-display edit form — `navigation`, `close_details`, `remove_multivalue` (`dkan_json_form_tweak.module`).
- **Theme:** `dkan_json_form_navigation`, `dkan_json_form_close_button`.
- **Security:** editorial UX only; no routes, permissions, or public endpoints.
