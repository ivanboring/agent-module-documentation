<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Colorpicker form element (fapi_colorpicker) — agent index

**Provides a reusable `colorpicker` Form API render element (native HTML5 color input + hex text field) for custom forms.**

- **Version:** 2.1.x
- **Core:** ^10.3 || ^11
- **Element:** `\Drupal\fapi_colorpicker\Element\Colorpicker` — `#type => 'colorpicker'`
- **Value:** 7-char lowercase hex incl. `#`; normalised, validated against `/^#[0-9a-f]{6}$/`.
- **Routes/permissions/services:** none. Library: `fapi_colorpicker/colorpicker`.
- **Security:** no routes, no admin UI, no anonymous or mutating endpoints; rendered hex is HTML-escaped via `htmlspecialchars`.