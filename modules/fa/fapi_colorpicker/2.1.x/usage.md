<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Adds a reusable `colorpicker` Form API element for custom Drupal forms.
---
The module registers a single render element (`\Drupal\fapi_colorpicker\Element\Colorpicker`, `@FormElement("colorpicker")`) backed by the native HTML5 `<input type="color">` picker plus a companion `.fapi-colorpicker-hex` text input for direct hex entry. There is no admin UI, route, permission, or service — it is a developer building block you place in a form array with `'#type' => 'colorpicker'`.

Values are normalised to a 7-character lowercase hex string including the leading `#` (e.g. `#1a2b3c`); `normalizeHex()` falls back to `#000000` for anything that does not match `/^#[0-9a-f]{6}$/`, and `validateColorpicker()` sets a form error for invalid input. The companion hex input is emitted in `preRenderColorpicker()` with the value passed through `htmlspecialchars(..., ENT_QUOTES)`, so the rendered markup is escaped. Typical setup is simply requiring the module and referencing the element type from your form.
---
- Add a colour field to a custom config or content form.
- Let editors pick a brand colour with a native OS colour picker.
- Provide a hex text input alongside the swatch for precise entry.
- Set an initial colour via `#default_value` (hex string).
- Make a colour field required with `#required => TRUE`.
- Validate that submitted values are valid 6-digit hex.
- Normalise user input to lowercase `#rrggbb`.
- Store a theme accent colour in module settings.
- Collect a colour per paragraph/entity in a custom widget.
- Reuse the element inside a multistep or AJAX form (`processAjaxForm`).
- Attach the element's JS/CSS library automatically on render.
- Add a colour option to a block configuration form.
- Build a palette editor from several colorpicker elements.
- Wrap the element in `form_element` theming with a title and description.
- Fall back safely to `#000000` on malformed input.
- Use the element in a Views or Layout Builder settings form.
- Expose colour selection in a custom entity form.
- Provide colour selection for a CKEditor/plugin settings form.
- Prefill the picker from previously saved configuration.
- Test colour handling with the shipped element defaults.