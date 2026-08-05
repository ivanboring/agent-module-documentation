<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Views Published or Roles (views_published_or_roles) — agent index

Views filter for "published **OR** (unpublished AND user has one of these roles)".
Depends on core `views`. Core requirement `^8 || ^9 || ^10 || ^11`.

Key facts:
- Whole module: `src/Plugin/` (the filter), `config/schema`,
  `views_published_or_roles.module`. No routes, permissions or configuration pages.
- **The problem it solves:** Views' status filter is a single value, and expressing this condition
  through filter groups is awkward — so sites end up rendering two views (breaking paging and
  sorting) or writing `hook_views_query_alter()`.
- **A filter is not access control.** It shapes the query; Drupal's node access system decides
  what a user may actually see. Admitting unpublished rows for a role does not grant that role
  access — and if the rendered output would reveal more than intended, the entity access check is
  what must be verified. Say this whenever a filter is proposed as a visibility mechanism.
- Note the info file's unusual dependency syntax (`views: 'drupal:views'` as a mapping rather than
  a list item); it resolves, but is not the conventional form.
