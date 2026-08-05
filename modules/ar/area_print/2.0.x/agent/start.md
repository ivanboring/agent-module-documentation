<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Area Print (area_print) — agent index

Prints a **selected page area** via JavaScript rather than the whole document. No dependencies.
Core requirement `^9 || ^10 || ^11`. **Release is 2.0.0-beta4 — beta.**

Key facts:
- Surface: `src/Element/` (render element), `src/Plugin/`, `area_print.libraries.yml`,
  `config/schema`, `area_print.install`. No routes or permissions.
- **Still write a print stylesheet.** This module chooses *what* is sent to the print dialog; a
  `@media print` stylesheet governs *how it looks* on paper — margins, colour, link URLs, page
  breaks. The two are complementary, and output without a print stylesheet will be poor whatever
  is selected.
- **Test across browsers.** JavaScript-driven printing (opening a print context with selected
  markup) behaves differently between engines. Check the browsers the site's audience actually
  uses.
- Consider whether a print stylesheet alone suffices: if there is exactly one printable region per
  page, `@media print` with `display: none` on everything else needs no module.
- For a paginated, styled document, a PDF generator is a different and often better tool — this is
  the lightweight option.
