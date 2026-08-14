<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Drutopia People (drutopia_people) — agent index

**Provides a People content type for showing visitors information about staff, volunteers and contributors.**

- **Version:** 2.0.x (dev checkout, branch `2.0.x`)
- **Core:** `^10.2 || ^11 || ^12`
- **Package:** Drutopia (config-only base feature)

Installs the **`people`** content type + fields, form/view displays, the **`people_type`** vocabulary, a Views listing (`view.people.page_listing`) with an "Add people" action link (`node.add/people`), a Pathauto pattern, and Metatag/SEO + search/facet config. Augments Drutopia editorial roles via `config/actions`.
Also installs a `content_by_author` view and (via `drutopia_people_update_8201`) enables the Views Plain dependency.

**Security:** No PHP code, routes, controllers, services or `permissions.yml` — the module ships only configuration. Access is governed by core node permissions and Drutopia roles. No anonymous or mutating endpoints, no dangerous sinks. No security findings.
