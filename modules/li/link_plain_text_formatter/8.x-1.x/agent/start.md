<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Link Plain Text Formatter (link_plain_text_formatter) — agent index

One field formatter: renders a **link field as plain text** (URL or title) rather than an anchor.
Depends on core `link`. Single class, no configuration surface beyond formatter settings.
Version **8.x-1.3**. Core requirement `^8 || ^9 || ^10 || ^11`.

**Why it exists:** every core link formatter produces an `<a>`. Plain-text email, CSV export,
print stylesheets, SMS, QR sources and `alt` attributes all want the string. The alternative is a
Views field rewrite or a template override per case.

**Point of care — stripping the anchor does not make a URL safe in every context:**
- a `javascript:` URI is inert as text and dangerous the moment something re-links it;
- a URL in a **CSV cell** starting with `=`, `+`, `-` or `@` is a **formula-injection** vector in
  a spreadsheet.

Neither is this module's bug — the consumer owns that escaping — but this formatter is where those
strings start their journey.
