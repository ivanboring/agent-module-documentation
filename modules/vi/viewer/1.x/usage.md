<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Viewer displays CSV, XLSX and other data files as tables and previews inline, rendering file contents in the browser.

---

A spreadsheet or CSV attached to a page is more useful shown as a table than as a download link. Viewer renders CSV, XLSX and similar files as inline tables/previews. The security consideration is that it parses and renders file contents: the files it displays should be trusted or access-controlled, since rendering an attacker-supplied spreadsheet involves parsing (parsers have had vulnerabilities) and displaying its contents (a CSV/spreadsheet can contain markup or formula-like content that, if rendered unescaped, could be an injection vector). Confirm the displayed files come from a trusted/access-controlled source and that the rendering escapes cell content. For displaying trusted data files it is a useful inline viewer.

---

- Display a CSV as a table.
- Preview an XLSX inline.
- Show a spreadsheet in the browser.
- Render data files as tables.
- Preview attached files.
- Confirm files are trusted.
- Ensure cell content is escaped.
- Access-control displayed files.
- Show tabular data inline.
- Avoid rendering untrusted spreadsheets.
- Preview a data file.
- Display file contents.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.
- Pair with related modules.
- Verify theme fit.
- Match your use case.
- Confirm compatibility.