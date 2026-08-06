<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Computed Breadcrumbs makes a node's breadcrumb trail available as a computed field, so it can be read like any other field.

---

Drupal builds breadcrumbs during rendering, through breadcrumb builders that run when a page is themed. That works for a themed site and fails everywhere else: a decoupled front end fetching a node over JSON:API gets its fields and no breadcrumb, because the breadcrumb was never a property of the node — it was a property of rendering it.

Making it a computed field moves it into the data. The front end reads `breadcrumbs` alongside `title` and `body`; a View can output it; a search index can store it.

**That is the whole argument, and it is a good one for decoupled sites specifically.** Rebuilding breadcrumb logic in a front end means reimplementing the site's own hierarchy rules in a second place, where they drift.

Two things to know. **Computed fields are computed per request**, so a listing of fifty nodes computes fifty breadcrumb trails — check the cost before putting the field on a high-volume API response. And **breadcrumbs depend on context** in core: the same node reached through two paths can legitimately have two trails, and a computed field has to pick one. Know which one it picks before relying on it for navigation rather than for SEO markup.

---

- Read a node's breadcrumb over JSON:API.
- Give a decoupled front end breadcrumb data.
- Avoid reimplementing hierarchy in a front end.
- Output a breadcrumb in a View.
- Store a breadcrumb in a search index.
- Generate breadcrumb structured data.
- Keep hierarchy rules in one place.
- Check computation cost on a listing.
- Consider caching computed breadcrumbs.
- Know which trail is chosen for a node.
- Handle a node reachable by two paths.
- Use breadcrumbs for SEO markup.
- Plan navigation data for a headless site.
- Audit breadcrumb output against expectations.
- Document this module's behaviour for the team.
- Review it during a site audit.
- Verify its assumptions after an upgrade.
