<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Views Data Export Excel adds Excel output to the Views Data Export module.

---

CSV is the honest export format and Excel is the one people ask for. The difference matters more than it sounds: CSV loses number formatting, mangles leading zeros, guesses at encodings and turns anything resembling a date into one. A finance team exporting reference numbers gets `1.23457E+11`, and nobody notices until it matters.

A real spreadsheet format keeps types, so a column of codes stays a column of codes.

Being a Views Data Export format, everything else is unchanged — the View defines the fields, filters, sorts and access, and this adds an output option.

**Two practical points.** Spreadsheet generation is **memory-hungry**, because the library builds the document before writing it; a 50,000-row export is a different proposition from a 500-row one, and batched export is the mechanism to reach for. And **an exported spreadsheet leaves the site's access controls behind** — a View that correctly shows a user only their own rows produces a file that can be forwarded to anyone. That is inherent to exporting and worth stating when an export is added to a View over sensitive data.

There is also a formula-injection consideration with any spreadsheet export: a cell beginning `=`, `+`, `-` or `@` is interpreted as a formula by Excel, so user-supplied content can execute when the file is opened. Check whether the export escapes those, and if not, that content editors are the only source of the exported values.

---

- Export a View as an Excel file.
- Preserve leading zeros in codes.
- Keep number formatting in an export.
- Avoid CSV date mangling.
- Give a finance team a usable file.
- Reuse a View's filters and access.
- Batch a large export.
- Watch memory on a big spreadsheet.
- Recognise that exports leave access behind.
- Warn about forwarding exported data.
- Check for formula-injection escaping.
- Consider cells beginning with = or +.
- Limit who can run an export.
- Audit exports of sensitive Views.
- Plan reporting output formats.
