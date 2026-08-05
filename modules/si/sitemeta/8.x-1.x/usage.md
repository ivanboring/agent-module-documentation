<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Site Meta sets page title, description and keyword meta tags through configurable Site meta entities, driven by tokens.

---

The dominant module in this space is `metatag`, which is comprehensive, well maintained and correspondingly large — a full set of tag groups, per-bundle defaults, Open Graph, Twitter cards, Schema.org integration and a substantial configuration surface. Not every site needs that, and a smaller module that sets a title and a description well is a reasonable choice for a site whose SEO requirement is exactly those. This one models each rule as an entity with permissions of its own — `add site meta entities`, `administer site meta entities` — and uses core `token` for the values, so a description can be built from a field. Version **8.x-1.7** on `^9.3 || ^10 || ^11`. Two things to check before choosing it over the obvious alternative. **What it covers**: if the site will eventually want Open Graph and Twitter card tags — and any site that gets shared will — then a module that does titles and descriptions is a stepping stone to installing `metatag` anyway, and running both means two systems writing to the same `<head>` with no arbitration, which produces duplicate tags that search engines handle unpredictably. And **whether the values are tokens or literals** decides whether this scales: a rule per page is unmanageable past a few dozen, while a token-driven rule per bundle is one rule for a thousand nodes — the token dependency suggests the latter is intended, and it is worth confirming that per-bundle defaults are the primary mode rather than per-page overrides.

---

- Set a page's meta description.
- Build a description from a field.
- Set titles per content type.
- Add keywords to selected pages.
- Improve search result snippets.
- Set a homepage's meta tags.
- Override a title for a landing page.
- Use tokens in meta tags.
- Set descriptions for a section.
- Improve click-through from search.
- Add meta tags without a large module.
- Set a default description site-wide.
- Configure meta tags as entities.
- Support a small site's SEO needs.
- Set page titles independently of node titles.
- Add descriptions to term pages.
- Support an SEO audit's recommendations.
- Manage meta tags per rule.
