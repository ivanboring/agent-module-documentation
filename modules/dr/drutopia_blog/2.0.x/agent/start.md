<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Drutopia Blog (drutopia_blog) — agent index

**Provides a Blog content type and related configuration for personal or journal-like posts.**

- **Version:** 2.0.x (dev checkout, branch `2.0.x`)
- **Core:** `^10.2 || ^11 || ^12`
- **Package:** Drutopia (config-only base feature)

Installs the **`blog`** content type + fields, form/view displays, the **`(shared topics/tags)`** vocabulary, a Views listing (`view.blog.page_listing`) with an "Add blog" action link (`node.add/blog`), a Pathauto pattern, and Metatag/SEO + search/facet config. Augments Drutopia editorial roles via `config/actions`.

**Security:** No PHP code, routes, controllers, services or `permissions.yml` — the module ships only configuration. Access is governed by core node permissions and Drutopia roles. No anonymous or mutating endpoints, no dangerous sinks. No security findings.
