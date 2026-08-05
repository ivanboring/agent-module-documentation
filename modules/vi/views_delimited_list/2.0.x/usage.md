<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Views Delimited List renders a view's results as a single run of text separated by a delimiter — "Design, Engineering, Marketing" rather than a bulleted list.

---

Small inline lists are everywhere and Views' built-in styles make them awkward. A node's tags in a byline, the authors of a paper, the departments a service belongs to, a set of file formats — each wants to read as a sentence fragment, comma-separated, with the delimiter appearing between items and not after the last one. Views offers HTML list, table, grid and unformatted, and producing an inline comma-separated run from any of them means CSS that fights the markup or a template override on every site that needs one. A style plugin is the right layer: it governs how the result set as a whole is wrapped, which is exactly what "join these with a delimiter" is. Version **2.0.0** on `^9 || ^10 || ^11`, depending on core `views`. Two things it is worth checking against the requirement, since they are where implementations differ. **The last separator** is a typographic decision — English prose often wants "A, B and C" rather than "A, B, C" — so if the output is read as prose rather than as data, confirm whether a distinct final delimiter is configurable. And **the delimiter must be escaped** in any context where it is also the field separator: exporting a comma-delimited list into a CSV cell produces a broken file unless the cell is quoted, so a delimited *display* and a delimited *export format* are different jobs and should not be confused.

---

- Show tags as a comma-separated list.
- List authors inline in a byline.
- Render departments as a sentence fragment.
- Avoid a bulleted list for two items.
- Show categories inline.
- Produce a compact related-items list.
- List file formats after a title.
- Show a service's locations inline.
- Render a list into a meta line.
- Avoid a template override for a small list.
- Show keywords under an article.
- List speakers at an event.
- Render a compact taxonomy summary.
- Show a product's available sizes.
- List contributors to a page.
- Produce a pipe-separated list.
- Show a breadcrumb-like trail.
- Render an inline list in a teaser.
