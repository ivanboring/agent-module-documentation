<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Domain Path Redirect makes the Redirect module domain-aware: redirects are stored as their own entity with a domain assignment, so `/offers` can point somewhere different on each domain of a Domain Access site.

---

The Redirect module stores one redirect per source path for the whole site, which breaks down as soon as several domains share a Drupal install and need different destinations for the same path. This module adds a `domain_path_redirect` content entity — bundleable ("Redirect type"), non-translatable, stored in its own `domain_path_redirect` table, and administered under `/admin/config/search/domain_path_redirect` with the Redirect module's existing **`administer redirects`** permission rather than inventing a new one. The listing, add, edit and delete routes follow the standard entity pattern, with the collection rendered by `_entity_list`. A field-widget alter on the redirect source element (`hook_field_widget_redirect_source_form_alter()`) adapts the source input so domain-scoped redirects can be entered the same way as ordinary ones, and the module ships its own library, action and task links for the admin UI. It requires `domain` and `redirect (>= 1.12.0)`.

---

- Point the same path at different destinations per domain.
- Redirect a legacy URL only on the domain where it existed.
- Keep marketing short links domain-specific.
- Manage per-domain redirects from a dedicated admin listing.
- Reuse the Redirect module's permission model.
- Add a redirect for a campaign on one affiliate site.
- Avoid conflicting global redirects between domains.
- Migrate a domain-specific site into a multi-domain install.
- Redirect old country-site paths to new equivalents.
- Keep SEO tidy after consolidating several sites into one.
- Give each brand its own redirect set.
- Bulk-manage redirects per domain from the entity list.
- Support redirect types via the entity's bundles.
- Keep domain redirects separate from global ones.
- Fix broken inbound links reported for one domain only.
- Redirect to an external URL for a specific domain.
- Delegate redirect management to a domain's editors.
- Deploy domain redirects as content rather than config.
- Audit which redirects exist per domain.
- Retire a domain gracefully by redirecting its paths.
