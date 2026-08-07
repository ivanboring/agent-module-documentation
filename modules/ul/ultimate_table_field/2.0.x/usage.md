<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Ultimate Table Field stores tabular data as a field, rather than as markup in a text field.

---

Tables typed into a WYSIWYG are the usual arrangement and the worst one. The markup drifts between authors, header rows get lost, the structure cannot be queried or reformatted, and the result is unreadable on a phone because nothing knows which cell belongs to which column.

Storing the table as field data fixes all of that at once: the structure is explicit, the display is a formatter decision rather than baked-in markup, and the same data can be rendered as a table on desktop and as something else on a small screen.

**Two things determine whether the rendered output is usable, and they are worth checking against the formatter rather than assuming the field type handles them.** Real header cells with the right `scope` are what let a screen reader announce "Price, £40" instead of reading a stream of numbers — a grid of divs is unlabelled values. And the responsive strategy is a genuine design decision with no universally right answer: horizontal scrolling keeps the structure and pushes columns off-screen, while collapsing each row into a stacked block keeps everything visible and destroys the comparison that was usually the point of the table.

Worth also deciding how editors get data in. Typing a large table cell by cell is slow enough that people paste from a spreadsheet instead, so whether the field supports that shapes whether it is used.

---

- Store a table as structured data.
- Stop editors typing tables in a WYSIWYG.
- Keep header rows from being lost.
- Render a table responsively.
- Choose the display as a formatter.
- Reformat the same data for small screens.
- Verify real header cells with scope.
- Give a screen reader cell context.
- Choose a responsive strategy deliberately.
- Preserve comparison on small screens.
- Let editors paste from a spreadsheet.
- Query tabular data.
- Translate table content.
- Audit tables stored as markup.
- Document the module's behaviour for the team.
- Review it during a site audit.
- Verify its assumptions after an upgrade.
