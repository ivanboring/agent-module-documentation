<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Area Print prints a chosen part of a page — a single article, a table, a receipt — instead of the whole document, by sending a selected element to the browser's print dialog.

---

The standards answer to printing is a print stylesheet, and it remains the right one for controlling how a page prints. What it does not do easily is let a visitor print *one region* of a page on demand: `@media print` decides globally, so a page with three printable sections needs three stylesheets and a way to switch between them. This module takes the JavaScript route instead — a render element in `src/Element` and a plugin in `src/Plugin`, with `area_print.libraries.yml` supplying the script, so a print control can be attached to a defined area and triggered by the visitor. Configuration schema is present and there are no dependencies beyond core; the release is 2.0.0-beta4 with a range of `^9 || ^10 || ^11`. Two things worth saying when recommending it: a print stylesheet should still exist, because it governs how the selected content actually looks on paper and this module does not replace it; and JavaScript-driven printing behaves differently across browsers, so the output needs checking in the browsers a site's audience actually uses rather than assumed.

---

- Print a single article from a listing page.
- Print a table without the surrounding page.
- Give visitors a print button per section.
- Print a receipt or confirmation area.
- Avoid printing navigation and footers.
- Print a recipe without comments.
- Add a print control to a block.
- Print a form's summary.
- Print a specific tab's content.
- Reduce paper use on long pages.
- Print a report section for a meeting.
- Give a directory entry a print option.
- Print an event's details only.
- Support a print-and-take workflow.
- Print a chosen region of a dashboard.
- Complement a print stylesheet.
- Print a policy chapter alone.
- Provide a lightweight alternative to PDF generation.
