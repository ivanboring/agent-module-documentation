<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
AI Single Page Importer fetches a URL and uses AI to map the page into article fields.

---

AI Single Page Importer lets an editor supply an external URL; the module fetches that page and uses AI to extract and populate the fields of a new article node (title, body, and other mapped fields). It's a quick way to import a single web page into structured Drupal content.

Because the server fetches an editor-supplied URL, treat the URL as an SSRF-relevant input and restrict the feature to trusted editors (`use ai single page importer` / `administer ai single page importer settings`). AI extraction sends page content to the provider (cost). Depends on core `node` and `ai`; supports Drupal 10, 11, and 12.

---

- Import a single web page as content.
- Fetch an external URL server-side.
- Use AI to map page into fields.
- Populate title/body/other fields.
- Create an article node from a page.
- Treat the URL as SSRF-relevant.
- Restrict to trusted editors.
- Gate use with `use ai single page importer`.
- Gate settings with the admin permission.
- Send page content to the AI provider.
- Incur AI provider cost.
- Depend on core `node` and `ai`.
- Support Drupal 10, 11, and 12.
- Speed up single-page import.
- Map content into structured fields.
- Review imported content before publish.
- Configure field mappings.
- Import from trusted sources only.
- Complement bulk migration tools.
- Extract structured data with AI.
