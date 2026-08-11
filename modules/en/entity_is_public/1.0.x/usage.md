<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
An API for determining which entities are publicly accessible.

---

Entity Is Public provides an API for determining which entities are publicly accessible — a service other modules call to ask 'is this entity visible to anonymous users?', centralising the logic (published status, access checks) so features like sitemaps, search indexing or feeds can consistently include only public content.

It reports accessibility; it does not itself grant or restrict access (authoritative access control stays with core/hook_entity_access). Depends on `helper`; supports Drupal 10.2+, 11, and 12.

---

- Report if an entity is public.
- Provide an is-public API.
- Centralise public-visibility logic.
- Consider published status + access.
- Aid sitemaps/indexing/feeds.
- Report, not enforce, access.
- Depend on `helper`.
- Support Drupal 10.2+, 11, and 12.
- Configure nothing (a service).
- Aid developers.
- Handle public checks.
- Filter to public content
- Support Drupal.
- Support Drupal.
- Support Drupal.
