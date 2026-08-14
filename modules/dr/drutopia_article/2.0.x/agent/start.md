<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Drutopia Article (drutopia_article) — agent index

**Provides an Article content type and related configuration for time-sensitive content like news, press releases and blog posts.**

- **Version:** 2.0.x (dev checkout, branch `2.0.x`)
- **Core:** `^10.2 || ^11 || ^12`
- **Package:** Drutopia (config-only base feature)

Installs the **`article`** content type + fields, form/view displays, the **`article_type`** vocabulary, a Views listing (`view.article.page_listing`) with an "Add article" action link (`node.add/article`), a Pathauto pattern, and Metatag/SEO + search/facet config. Augments Drutopia editorial roles via `config/actions`.

**Security:** No PHP code, routes, controllers, services or `permissions.yml` — the module ships only configuration. Access is governed by core node permissions and Drutopia roles. No anonymous or mutating endpoints, no dangerous sinks. No security findings.
