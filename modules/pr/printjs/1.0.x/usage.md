<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Printjs adds a print button backed by the Print.js library, printing a specific region — a view's results, a node's content — rather than the whole page.

---

The browser's own print command prints everything: navigation, sidebars, cookie banner, footer. The conventional fix is a print stylesheet that hides those regions, which is the right approach and requires theme work on every site plus maintenance as the layout changes. Print.js takes the other route — collect the target content and hand the browser a document containing only that — which is why a module can offer it as a button without touching the theme. Version **1.0.10** on a core range spanning `^8.8` through `^12`, packaged under `Views` and configured at `/admin/config/…/printjs`, which suggests the primary use is printing a view's results: a report, a schedule, a filtered list someone wants on paper. Three things worth knowing. **A print stylesheet is still the better foundation** where the theme can be changed, because it works with the browser's own print dialogue, with Save as PDF, with keyboard shortcuts and without JavaScript, and Print.js does not remove the need for it so much as work around its absence. **Print.js does not carry the page's stylesheets by default** — the printed output can arrive unstyled unless the library is told which CSS to include, which is the most common complaint about it. And **the printed region is what is in the DOM**, so anything lazy-loaded, in an unopened tab or behind a "show more" is absent from the output, which surprises people printing a long listing.

---

- Print a view's results.
- Add a print button to a report.
- Print a schedule for a meeting.
- Print a node without navigation.
- Give users a clean printed page.
- Print a filtered listing.
- Add printing without theme changes.
- Print a table of data.
- Produce a paper copy of a roster.
- Print an invoice region.
- Print a product specification.
- Add a print button to a dashboard.
- Print a checklist.
- Produce a printable agenda.
- Print search results.
- Support an office workflow.
- Print a directory listing.
- Give editors a print preview.
