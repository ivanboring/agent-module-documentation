<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Advanced Shortcodes (advanced_shortcodes) — agent index

**Adds Bootstrap-style shortcodes (alerts, column, row, accordion(s), icon, jumbotron, progress, hr) to the Shortcode text filter.**

- **Version:** 2.0.x
- **Core:** ^9 || ^10 || ^11
- **Requires:** shortcode:shortcode
- **Plugins:** `src/Plugin/Shortcode/*Shortcode.php` (9 shortcode plugins); templates in `templates/*.html.twig`; Bootstrap libraries attached on non-admin pages via `hook_page_attachments()`.
- **Routes/permissions/services:** none of its own. Activated by enabling the Shortcode filter on a text format.

**Security:** No routes, no PHP `eval()`. Output is rendered through Twig templates, but the inner shortcode text is emitted with `|raw` in several templates (`shortcode-alerts.html.twig`, `shortcode-column.html.twig`) — the shortcode inner content is not re-sanitized, so these shortcodes must only be enabled in text formats limited to trusted roles (the usual trusted-text-format model). Accordion templates apply `striptags` allowlists before raw.
