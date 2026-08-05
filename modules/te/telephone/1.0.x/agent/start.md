<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Telephone (telephone) — agent index

The `telephone` field type, widget and `tel:` link formatter. **This is core's Telephone module
continued in contrib**: `core_version_requirement: '^11.4 || ^12'`, so it installs only on Drupal
11.4+, where core stopped shipping it. On Drupal ≤ 11.3 the identical core module applies — same
machine name, same plugin ids, same config.

Key facts:
- Field type `#[FieldType]` → `Plugin\Field\FieldType\TelephoneItem`.
- Widget id **`telephone_default`** (`TelephoneDefaultWidget`).
- Formatter id **`telephone_link`** (`TelephoneLinkFormatter`) — renders a `tel:` anchor.
- Hooks are OO (`src/Hook/TelephoneHooks.php`): `#[Hook('help')]`,
  `#[Hook('field_formatter_info_alter')]`, `#[Hook('field_type_category_info_alter')]` — the last
  places the field type in the right category in the *Add field* UI.
- `telephone.libraries.yml` + `css/telephone.icon.theme.css` (PostCSS source alongside) supply the
  field-type icon; `config/schema/telephone.schema.yml` covers the field settings.
- No permissions, no routes, no Drush.

Upgrade note: because ids are unchanged, moving from core to contrib is
`composer require drupal/telephone` and nothing else — existing
`field.storage.*`/`field.field.*` and display config keep working untouched.

```bash
drush cget core.entity_view_display.node.contact.default content.field_phone.type   # telephone_link
```
