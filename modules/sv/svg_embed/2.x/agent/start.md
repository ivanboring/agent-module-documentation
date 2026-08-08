<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# SVG Embed (svg_embed) — agent index

Embeds **SVG inline in text** (with SVG-string translation). Version **2.1.3**.

**Security done right (positive):** inline SVG is an XSS vector (SVG can carry `<script>`/events).
SVG Embed runs it through **`enshrined/svg-sanitizer`** (`$sanitizer->sanitize($text)`) before output
— verified applied in the processing path, not just imported — stripping scripts/handlers. Keep the
sanitizer library current.