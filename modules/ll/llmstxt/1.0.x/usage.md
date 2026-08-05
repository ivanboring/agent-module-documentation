<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
llms.txt serves an `/llms.txt` file from Drupal — the emerging convention for telling large language models what a site contains and how it should be read, in the same spirit as `robots.txt` but aimed at AI consumers rather than search crawlers.

---

The `llms.txt` proposal asks sites to publish a Markdown summary at a well-known path: what the site is, which pages matter, where the canonical documentation lives. The intent is that a model retrieving the site gets a curated map rather than inferring one from navigation. This module makes it a Drupal-managed resource: a settings form at `/admin/config/search/llmstxt` behind the module's own `administer llmstxt` permission holds the content, and a controller serves it at `/llms.txt` with `_access: 'TRUE'` and `_disable_route_normalizer: 'TRUE'` — both correct, since the file must be publicly fetchable at exactly that path. Managing it as configuration rather than a static file means it survives deployment and travels with a config export. Two honest caveats belong with any recommendation. The convention is **not a standard**: it is a proposal with growing but partial adoption, and no crawler is obliged to fetch or honour it. And it is advisory in the same way `robots.txt` is — it expresses a preference, and provides no enforcement whatsoever against a model or scraper that ignores it. The release is 1.0.0-alpha1.

---

- Publish an llms.txt file describing the site.
- Point AI crawlers at canonical documentation.
- Curate what a model sees first.
- Manage llms.txt without touching the docroot.
- Keep llms.txt through a deployment.
- Export the file's content with site configuration.
- Describe a documentation site's structure.
- Highlight the most useful pages for a model.
- Update the file without a code release.
- Link to Markdown versions of key pages.
- Follow an emerging AI-crawler convention.
- Complement robots.txt with AI-specific guidance.
- Describe an API reference for retrieval.
- Reduce misinterpretation of a site by models.
- Restrict llms.txt editing to a permission.
- Serve the file at the exact required path.
- Version the file alongside site config.
- Experiment with AI discoverability.
