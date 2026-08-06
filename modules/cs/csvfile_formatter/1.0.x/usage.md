<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
CSV File Formatter renders an uploaded CSV file as an HTML table on the page, instead of as a download link.

---

The pattern fits data that is produced elsewhere and published as-is: a set of results, a price list, a timetable, a register, a monthly statistics release. The data lives in a spreadsheet because that is where whoever maintains it works, and the alternatives on the Drupal side are all worse — a migration turns an ongoing update into a recurring engineering task, a table pasted into a WYSIWYG is unmaintainable after the second revision, and a download link makes the reader open a file to see three numbers. Rendering the uploaded file means the publisher's workflow is "upload the new CSV" and the page is always current. Version **1.0.26** on `^8` through `^11`. Three things determine whether the result is usable. **A rendered table is only accessible if it is marked up as one** — a header row needs `<th>` with a `scope`, and a table without that is a grid a screen-reader user cannot navigate, which matters more here than usual because the whole content of the page is the table. **CSV is under-specified**: encoding, delimiter, quoting and line endings all vary by producer, and a file exported from a spreadsheet in one locale uses semicolons where another uses commas, so the formatter's assumptions have to match the actual files rather than the standard. And **the file is untrusted input rendered into a page**, so its cells must be escaped — a CSV containing `<script>` is a stored XSS if the formatter emits cells as markup, and the same file opened in a spreadsheet is a formula-injection vector, which is the reader's problem rather than the site's but is worth knowing about.

---

- Publish a results table from a spreadsheet.
- Show a price list as a table.
- Render a timetable from CSV.
- Publish monthly statistics.
- Show a register as an HTML table.
- Avoid a migration for tabular data.
- Let a publisher update by re-uploading.
- Display data without a download.
- Publish a fixtures list.
- Show an inspection report's data.
- Render an open-data file inline.
- Publish a directory from a spreadsheet.
- Show a comparison table.
- Display a rota as a table.
- Publish a rates table.
- Show survey results inline.
- Render a product specification table.
- Publish a schedule from CSV.
