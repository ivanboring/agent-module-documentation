<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Redirect Extensions adds bulk operations to the Redirect module: change the status code or the destination of many redirects at once, and export the redirect list.

---

Redirect stores each redirect as an entity with a source, a destination and an HTTP status code, and its admin UI edits them one at a time. That is fine until a site migration leaves nine hundred redirects pointing at a path that has since moved, or someone realises that a batch created as 302 should have been 301 — at which point the choice is a database update or an afternoon of clicking. This module supplies the missing bulk forms: `/admin/config/search/redirect/edit/status` for status codes and `/admin/config/search/redirect/edit/dest` for destinations, both gated by Redirect's own `administer redirects` permission rather than a new one. `RedirectDatabaseStorage` (behind an interface) implements the bulk operations, and `views_data_export` is a dependency because export is part of the offering. Requirements are `redirect` and `views_data_export`, with core `^9.4 || ^10 || ^11`. Worth knowing when planning: bulk-changing destinations is not reversible through the UI, and redirect status codes have real SEO consequences — 301 tells search engines the move is permanent and transfers ranking signals, 302 does not — so a bulk change of code is a decision to make deliberately rather than to tidy up.

---

- Change many redirects from 302 to 301.
- Repoint a batch of redirects to a new destination.
- Fix redirects after a section moves.
- Export the redirect list for review.
- Clean up redirects created by a migration.
- Correct a status code applied in error.
- Audit redirects in a spreadsheet.
- Bulk-update redirects after a rebrand.
- Repoint redirects to a replacement page.
- Reduce manual editing of redirect entities.
- Hand a redirect list to an SEO consultant.
- Consolidate redirects to one target.
- Fix a typo repeated across many redirects.
- Prepare redirects before a launch.
- Review redirect coverage after a migration.
- Change redirect codes for a site section.
- Export redirects before a cleanup.
- Apply an SEO recommendation in bulk.
