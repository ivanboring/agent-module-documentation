<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Map Widget (map_widget) — agent index

A form element + field widget for `map` field items (associative arrays). No module dependencies,
no config form, no permissions, no Drush; config schema for the widget settings.

Key facts:
- Form element **`#[FormElement('map_associative')]`** → `src/Element/AssociativeArray.php`.
  Usable directly in any form:

  ```php
  $form['options'] = [
    '#type' => 'map_associative',
    '#title' => t('Options'),
    '#default_value' => ['key' => 'value'],
  ];
  ```

- Field widget **`#[FieldWidget(...)]`** → `AssociativeArrayWidget`, which wraps that element for
  fields whose items are maps. Settings are declared in
  `config/schema/map_widget.schema.yml`.
- `map_widget.install` handles install-time setup; `map_widget.libraries.yml` +
  `css/associative-element.css` style the rows.
- Uses modern PHP **attributes** (not annotations) for both plugins, hence the `^10.3 || ^11`
  core requirement.

```bash
# Point a map field's form display at the widget:
drush cget core.entity_form_display.node.article.default content.field_settings
drush cset core.entity_form_display.node.article.default content.field_settings.type map_widget -y
drush cr
```

Notes:
- The stored value is a plain PHP associative array — keys are whatever the editor typed, so
  validate/normalise them in code if downstream consumers expect specific key names.
- There is no per-key schema: the field stores arbitrary structure, which is the point but also
  means config-schema validation cannot check the contents.
