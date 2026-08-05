<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# llms.txt (llmstxt) — agent index

Serves an `/llms.txt` file from Drupal configuration. No dependencies.
Core requirement `^9.3 || ^10 || ^11`. **Release is 1.0.0-alpha1 — alpha.**

| Route | Path | Requirements |
|---|---|---|
| `llmstxt.settings` | `/admin/config/search/llmstxt` | `administer llmstxt` |
| `llmstxt.content` | `/llms.txt` | `_access: 'TRUE'`, `_disable_route_normalizer: 'TRUE'` |

Both requirements on the public route are correct: the file must be fetchable by anyone at
exactly that path.

Key facts:
- Content lives in **configuration**, so it survives deployment and travels with `drush cex` —
  the advantage over a static file in a Composer-built docroot.
- **Two caveats to state whenever recommending it:**
  1. `llms.txt` is a **proposal, not a standard**. Adoption is growing but partial, and nothing
     obliges a crawler to fetch it.
  2. It is **advisory**, exactly like `robots.txt`. It expresses a preference and enforces
     nothing. A site that needs to prevent AI scraping needs access control or blocking, not this.
- Own permission `administer llmstxt` rather than reusing `administer site configuration` — so
  editing the file can be delegated to a content or SEO role.
