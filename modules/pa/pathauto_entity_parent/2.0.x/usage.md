<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Pathauto entity parent lets content declare a parent entity and generates path aliases that reflect the resulting hierarchy.

---

URLs that mirror a site's structure are worth having: `/services/planning/apply` tells a visitor where they are, gives search engines a signal about relationships, and lets a section be recognised at a glance in analytics and logs. Drupal's own hierarchy tools do not produce it. Pathauto builds an alias from tokens, and a node has no parent to reference; menus express hierarchy for navigation and are not available to the alias pattern; taxonomy expresses classification and produces `/category/subcategory/title`, which is a different statement. Core's **Book** module does model parents and comes with its own navigation and printing assumptions that most sites do not want. Giving content an explicit parent and feeding that into the alias pattern is the direct answer. Version **2.0.0** on **`^11`** — Drupal 11 only — requiring `pathauto` and core `node` and `path`. Three things follow from URLs that encode hierarchy, and each is a real cost worth pricing before adopting the pattern. **Moving a page changes its URL and every descendant's**, so the site needs redirects generated automatically — the `redirect` module doing so on alias change is effectively a prerequisite, not an optional companion. **Depth compounds**: four levels of nesting produce long URLs, and a rename near the root rewrites everything below it. And **a cycle is possible unless prevented** — a parent chain that loops will recurse when the alias is generated, so check that the module refuses one rather than discovering it during a bulk regeneration.

---

- Build URLs reflecting site structure.
- Nest a page under a section.
- Generate /services/planning/apply style paths.
- Give content an explicit parent.
- Build a handbook's URL hierarchy.
- Reflect structure in analytics paths.
- Avoid using Book for hierarchy.
- Build a guidance section's URLs.
- Nest documentation pages.
- Generate hierarchical aliases.
- Support a policy library's structure.
- Build a department's page tree.
- Reflect a course's structure in URLs.
- Improve SEO signals from paths.
- Build a knowledge base's hierarchy.
- Nest product category pages.
- Generate breadcrumb-like URLs.
- Structure a large site's paths.
