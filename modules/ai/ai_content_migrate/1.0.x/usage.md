<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
AI Content Migrate uses AI agents to model and import legacy HTML content into Drupal entities and media.

---

AI Content Migrate automates moving legacy HTML into Drupal: it uses AI agents to infer a content model from source HTML, then imports the content (and referenced media/images) into nodes and media entities. It can fetch source HTML from a URL and download referenced assets as part of the import.

Because the importer fetches remote URLs and downloads referenced media server-side, treat the source URL as an SSRF-relevant input — only run migrations against trusted sources, and be aware it also reads local `file://` paths when resolving relative assets. Gated by `administer ai content migrate`; depends on core `node`, `media`, and `ai_agents`.

---

- Automate content modeling from HTML.
- Migrate legacy HTML into Drupal.
- Use AI agents to infer a model.
- Import content into nodes.
- Create media entities for assets.
- Fetch source HTML from a URL.
- Download referenced media server-side.
- Resolve relative asset paths.
- Treat source URLs as SSRF-relevant.
- Run migrations only against trusted sources.
- Gate with `administer ai content migrate`.
- Depend on core `node` and `media`.
- Depend on `ai_agents`.
- Support Drupal 10.3+ and 11.
- Model content automatically.
- Reduce manual migration effort.
- Map HTML into entity fields.
- Handle images during import.
- Restrict to trusted admins.
- Support AI-driven migration workflows.
