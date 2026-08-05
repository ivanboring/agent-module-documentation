<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Link Plain Text Formatter renders a link field as plain text — the URL or title as characters — rather than as an anchor element.

---

Core's link field formatters all produce a link, which is right for a web page and wrong everywhere else a field gets rendered. Plain-text email has no anchors. A CSV export wants the URL in a cell, not `<a href>`. A JSON feed built from rendered output, a print stylesheet, an SMS, a QR-code source, an `alt` attribute — all want the string. Without a plain formatter the usual workaround is a Views field rewrite or a template override per case, which is a lot of ceremony for "show the text". This module adds the formatter, depends on core `link`, spans `^8` through `^11` and is version **8.x-1.3**. It is a single-class module and does exactly one thing, which is the appeal. The point of care is the same one that applies to every plain-text rendering: **stripping the anchor does not make a URL safe in every context**. A `javascript:` URI is inert as text on a page and dangerous the moment something re-links it; a URL in a CSV cell beginning with `=`, `+`, `-` or `@` is a formula-injection vector in a spreadsheet. Neither is this module's fault — the consumer of the string owns that escaping — but a plain-text formatter is exactly where those strings start their journey.

---

- Show a URL as text in an email.
- Export link fields to CSV.
- Render a URL for a print stylesheet.
- Include a link in an SMS.
- Show a URL for a QR code.
- Display a link without an anchor.
- Feed a URL into a Views rewrite.
- Show the link title only.
- Render a link into a data attribute.
- Build a plain-text newsletter.
- Include URLs in a data export.
- Show a URL in a tooltip.
- Avoid a template override.
- Render a link into JSON output.
- Show a URL that should not be clickable.
- Display a link in a plain-text log.
- Support a text-only view mode.
- Include a URL in an alt attribute.
