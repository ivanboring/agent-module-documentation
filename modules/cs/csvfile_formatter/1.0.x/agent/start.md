<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CSV File Formatter (csvfile_formatter) — agent index

Renders an uploaded **CSV file as an HTML table** instead of a download link. Package `Fields`.
Version **1.0.26**. Core requirement `^8 || ^9 || ^10 || ^11`.

**Where it fits:** data produced elsewhere and published as-is — results, price lists, timetables,
registers, monthly statistics. The alternatives are worse: a **migration** turns an ongoing update
into a recurring engineering task; a **table pasted into a WYSIWYG** is unmaintainable after the
second revision; a **download link** makes the reader open a file to see three numbers. Here the
publisher's workflow is *"upload the new CSV"*.

**Three things determine whether the result is usable:**
1. **A rendered table is only accessible if it is marked up as one** — a header row needs `<th>` with
   `scope`. Without that it is a grid a screen-reader user cannot navigate, which matters more here
   than usual because **the table is the whole content of the page**.
2. **CSV is under-specified.** Encoding, delimiter, quoting and line endings vary by producer — a
   spreadsheet exported in one locale uses **semicolons** where another uses commas. The formatter's
   assumptions must match **the actual files**, not the standard.
3. **The file is untrusted input rendered into a page.** Cells must be **escaped** — a CSV
   containing `<script>` is stored XSS if cells are emitted as markup. (The same file opened in a
   spreadsheet is a **formula-injection** vector — the reader's problem, worth knowing about.)
