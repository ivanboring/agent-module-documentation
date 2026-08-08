<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
CSV Field provides a field that stores CSV data and renders it as a table on display.

---

CSV Field adds a field type for storing CSV (comma-separated) data and a formatter that renders
that data as an HTML table. Editors paste or upload CSV content and the module parses it (using the
PapaParse JavaScript library) to display a tabular view, useful for simple data tables — price lists,
schedules, specifications — that are easier to maintain as CSV than as structured fields. It depends
on core File and the PapaParse asset library.

Use it where content needs a lightweight table maintained as CSV without building a full paragraph or
entity structure. The rendered table is derived from field data (authored content), so the usual
text-escaping expectations apply — display goes through Drupal's render/Twig layer. It is a
content-display/field module with no access-control role.

---

- Store CSV data in a field.
- Render CSV as an HTML table.
- Maintain a simple data table as CSV.
- Parse CSV with the PapaParse library.
- Show a price list from CSV.
- Display a schedule table.
- Upload or paste CSV content.
- Depend on core File.
- Present specifications as a table.
- Avoid building structured fields for simple tables.
- Use a CSV formatter on the field.
- Let editors edit tabular data as CSV.
- Render rows and columns from CSV.
- Attach CSV to content.
- Format field-stored CSV for display.
- Keep tabular data lightweight.
- Show comma-separated data.
- Add a table without a paragraph type.
- Escape displayed values via the render layer.
- Use for read-only tabular content.
