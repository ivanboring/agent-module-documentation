<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Icons (icons) — agent index

**API module** for icon handling, with one submodule per provider. Depends on core `options`.
Core requirement `^10.5 || ^11`.

| Submodule | Provider |
|---|---|
| `icons_fontawesome` | Font Awesome |
| `icons_fontello` | Fontello |
| `icons_icomoon` | IcoMoon |
| `icons_iconpicker` | generic picker |

Key facts:
- **Check core first.** Drupal 11.1 introduced an icon API in core. On a current core the
  requirement may already be met — establish that before adding this module, since the two
  abstractions overlap.
- The API-plus-providers shape is the distinguishing feature against the two icon modules in
  wave 59: `iconify_icons` (Iconify API, needs outbound HTTP) and `font_iconpicker` (one custom
  font). This one lets several coexist and lets a site swap provider without changing stored
  values.
- `icons.field_type_categories.yml` registers its field types into Drupal's field-type category
  system, so they group properly in the field-add UI.
- Enable only the provider submodules actually used — each brings its own library expectations.
