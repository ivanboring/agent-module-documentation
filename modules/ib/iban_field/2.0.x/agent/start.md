<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# IBAN Field (iban_field) — agent index

An IBAN **field widget** (plus a Webform element in a submodule). No config form, no permissions,
no Drush; config schema shipped for the widget settings. Requires core `field`.

Submodule (own docs):
- `webform_iban_field` →
  [../../modules/webform_iban_field/2.0.x/agent/start.md](../../modules/webform_iban_field/2.0.x/agent/start.md)

Key facts:
- Widget `@FieldWidget(id = "iban_field", label = "IBAN Field")` — `IbanFieldWidget`, applied to
  text field types (see the `field_types` list in the annotation). It is a **widget only**: there
  is no custom field *type*, so the value is stored in an ordinary text field.
- Widget settings (schema `field.widget.settings.iban_field`):

  | Setting | Type | Meaning |
  |---|---|---|
  | `size` | integer | Width of the textfield |
  | `placeholder` | label | Placeholder text |

- Validation rejects structurally invalid IBANs at form submission. Because validation lives in
  the **widget**, values written programmatically or through REST/JSON:API bypass it — add an
  entity constraint if you need enforcement at the storage layer.

```bash
# Point an existing text field's form display at the widget:
drush cset core.entity_form_display.node.supplier.default \
  content.field_bank_account.type iban_field -y
drush cset core.entity_form_display.node.supplier.default \
  content.field_bank_account.settings.placeholder 'NL91ABNA0417164300' -y
drush cr
```
