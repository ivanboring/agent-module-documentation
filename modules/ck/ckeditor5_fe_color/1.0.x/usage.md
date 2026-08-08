<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
CKEditor5 FeColor Plugin provides an interface for selecting text (font) colors in CKEditor 5, letting editors apply colors to text in the WYSIWYG editor.

---

CKEditor5 FeColor Plugin adds a font-color picker to CKEditor 5. Once enabled on a text format's
CKEditor 5 toolbar, editors can select and apply colors to text directly in the WYSIWYG editor. It is
a CKEditor 5 plugin integration (depends on core `ckeditor5`) and ships an optional
`ckeditor5_fe_color_config_example` submodule demonstrating example configuration.

Use it where content editors need inline text coloring without hand-editing HTML. As with any WYSIWYG
styling feature, the colors are applied as inline styles/classes in the saved markup, so the text
format's allowed-tags/filters must permit the relevant attributes for the colors to survive
filtering. It is a purely editorial/presentation enhancement — no access control implications. Add the
color button to the CKEditor 5 toolbar for the desired text formats and, if helpful, install the
example-config submodule as a starting point.

---

- Add a text color picker to CKEditor 5.
- Let editors apply font colors in WYSIWYG.
- Enable the color button on a text format toolbar.
- Color text without editing HTML.
- Apply inline text colors in the editor.
- Install example config via the submodule.
- Depend on core ckeditor5.
- Ensure the text format allows color attributes.
- Provide an interface for selecting colors.
- Enhance the editing experience with color.
- Add color styling to rich text.
- Configure the color picker per text format.
- Use ckeditor5_fe_color_config_example as a starting point.
- Keep colors surviving text-format filtering.
- Style headings or emphasis with color.
- Extend the CKEditor 5 toolbar.
- Apply brand colors to content text.
- Avoid manual span/style editing.
- Present a font-color palette to editors.
- Add inline color classes/styles to markup.
