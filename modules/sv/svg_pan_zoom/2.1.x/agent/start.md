<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# SVG Pan Zoom (svg_pan_zoom) — agent index

**Renders SVG image-field values with the svg-pan-zoom JS library for interactive pan/zoom.**

- **Version:** 2.1.x
- **Core:** ^10 || ^11
- **Dependencies:** image, svg_image; external svg-pan-zoom library (>=3.6.1)
- **Formatter:** `svg_pan_zoom` (extends `ImageFormatter`) for `image` fields — `src/Plugin/Field/FieldFormatter/SvgPanZoomFormatter.php`
- **Theme:** `svg_pan_zoom_formatter` / `svg-pan-zoom-formatter.html.twig`; JS options passed as `data-*` attributes.
- **Display modes:** `embed` (`<embed>`) or `inline` (raw SVG printed via `Markup::create()`).
- **Routes/permissions:** none (no routes, no permissions.yml).

**Security:** No routes or endpoints. `inline` display mode outputs raw SVG file bytes unsanitized (svg_pan_zoom.module `svg_pan_zoom_preprocess_svg_pan_zoom_formatter`), so untrusted SVG uploads could carry script — gate SVG uploads to trusted editors or use `embed` mode.

See [configure/formatter.md](configure/formatter.md)
