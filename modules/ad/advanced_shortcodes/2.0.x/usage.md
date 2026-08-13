<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Advanced Shortcodes extends the Shortcode module with ready-made Bootstrap markup shortcodes usable inside any text format.

---

The Shortcode module provides a text-format filter that turns `[tag]...[/tag]` bracket codes into HTML at render time. This module adds nine such shortcode plugins (`src/Plugin/Shortcode/*`): `alerts`, `column`, `row`, `accordion`, `accordions`, `icon`, `jumbotron`, `progress` and `hr`. Each plugin's `process()` builds a `#theme` render array rendered by a Twig template under `templates/`, and the module attaches its Bootstrap CSS/JS libraries on every non-admin page via `hook_page_attachments()`.

To use it, install and enable the Shortcode dependency, then edit a text format (Configuration > Content authoring > Text formats and editors), enable the Shortcode filter, and tick the individual shortcodes to allow. Security note: several templates emit the shortcode's inner text with Twig's `|raw` (e.g. `templates/shortcode-alerts.html.twig`, `templates/shortcode-column.html.twig`), so the inner content is output without extra escaping — only enable these shortcodes in text formats restricted to trusted roles, and keep the "Limit allowed HTML tags" filter in the format. There is no `eval()` or PHP execution; output is plain Bootstrap markup. The module ships no routes, permissions, services or config of its own.

---
- Enable the Shortcode filter on a text format and turn on the advanced shortcodes.
- Wrap content in `[alerts type="info"]message[/alerts]` to render a Bootstrap alert.
- Use `type` 1-success / 2-info / 3-warning / 4-danger on the alerts shortcode.
- Build responsive grids with `[column cols="6" begin="1" end="1"]...[/column]`.
- Set explicit breakpoints via `xs`/`sm`/`md`/`lg` attributes on `column`.
- Open a Bootstrap row wrapper with the `begin` attribute and close it with `end`.
- Group collapsible panels with `[accordions]...[/accordions]` containing `[accordion]` items.
- Give each `[accordion title="..." icon="..." id="..."]` a heading and body.
- Add an inline icon element with `[icon class="fa fa-star"][/icon]`.
- Render a hero banner with `[jumbotron title="Welcome"]text[/jumbotron]`.
- Show a progress bar with `[progress percent="50"][/progress]`.
- Insert a horizontal rule via the `hr` shortcode.
- Pass an extra `class` attribute to any shortcode to add CSS classes.
- Rely on the bundled Bootstrap library so markup styles without theme changes.
- Author shortcodes directly in CKEditor source or plain text fields.
- Read each plugin's `tips()` output shown in the format's filter tips.
- Restrict advanced shortcodes to Full HTML / trusted-editor formats only.
- Combine columns and rows to lay out multi-column content without a layout builder.
- Keep the module's CSS/JS off admin pages (it skips the admin theme automatically).
- Disable the module's Bootstrap library by overriding the format if your theme already ships Bootstrap.
