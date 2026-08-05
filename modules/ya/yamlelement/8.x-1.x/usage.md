<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Yaml Form Element provides a reusable YAML form element — a textarea that parses and validates YAML — plus a field widget and formatter built on it.

---

Drupal itself is full of YAML, and any module offering structured-but-open configuration eventually needs a place for an administrator to type some. Doing it with a plain textarea means invalid YAML reaches the save handler and the parse error surfaces somewhere unhelpful; doing it properly means writing a `#element_validate` that runs the parser and reports errors on the element. This module packages that once: `#type => 'yamlelement'` in any form, with parsing and validation handled, and a matching field widget and formatter for storing YAML in a field. Version **8.x-1.5** on core `^8.8` through `^11`. One thing to be clear about, since it is the mistake this element makes easy: **valid YAML is not the same as acceptable data**. The element checks syntax; it cannot check that the keys are the ones your code expects or that the values are within range, so consuming code still needs its own validation and must not assume the parsed structure has any particular shape. And exposing a YAML element to anyone less than fully trusted deserves a moment's thought about what the parsed structure is then used *for* — a YAML blob that becomes plugin configuration, a service argument, or a render array is a much larger surface than one that becomes display text.

---

- Add a YAML field to a settings form.
- Validate YAML before saving.
- Store structured data in a field.
- Give administrators a YAML editor.
- Report YAML syntax errors properly.
- Reuse one YAML element across forms.
- Store configuration as YAML content.
- Edit a mapping without a custom form.
- Provide flexible per-node settings.
- Show YAML in a formatted output.
- Prototype a structured field quickly.
- Store a list of key-value pairs.
- Configure a module with free-form YAML.
- Avoid writing a parser callback.
- Edit chart configuration as YAML.
- Store options for a custom widget.
- Provide developer-facing settings.
- Validate indentation before save.
