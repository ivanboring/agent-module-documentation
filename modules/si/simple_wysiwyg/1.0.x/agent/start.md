<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Simple WYSIWYG (simple_wysiwyg) — agent index

**Minimal client-side rich-text widget + formatter for plain string/text fields.**

- **Version:** 1.0.x (1.0.0-beta1)
- **Core:** ^8 || ^9 || ^10 || ^11
- **Widget:** `simple_wysiwyg` (WidgetBase) — field types string/string_long/text/text_long; settings `buttons_visible`, `allowed_tags`, `multiline`, `max_length`
- **Formatter:** `simple_wysiwyg` (FormatterBase)
- **Library:** `simple_wysiwyg/simple_wysiwyg` (deps core/drupal, core/once)
- **Config schema:** `simple_wysiwyg.schema.yml`

**Security:** no routes/permissions. Formatter output is **not sanitised** — `SimpleWysiwygFormatter.php:34` uses `Markup::create($item->value)` on the raw field value, and tag filtering is client-side only. Treat as an XSS sink for untrusted input; restrict field-edit access or use a core text format with a real filter. (Reported, not recorded.)
