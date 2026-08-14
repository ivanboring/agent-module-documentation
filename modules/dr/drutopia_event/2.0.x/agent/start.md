<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Drutopia Event (drutopia_event) — agent index

**Config-only Drutopia feature that installs an Event content type + date, taxonomy, media, views, facets and SEO config.**

- **Version:** 2.0.x
- **Core:** ^10.2 || ^11 || ^12 · **Package:** Drutopia
- **Type:** Features base feature (`bundle: drutopia`, `required: true`); ships `config/install` + `config/actions` only, no custom PHP.
- **Creates:** node type `event`; fields incl. `field_event_date` (datetime_range), `field_event_type`, topics/tags, media/focal-point image, summary, paragraphs body.
- **Also installs:** Search API index (`search_api.index.event`), facets (event_type, topics), Views listing `view.event.page_listing` (+ "Add event" action), pathauto patterns, metatag defaults, a block visibility group.
- **Roles:** `config/actions` grant event permissions to Drutopia `contributor`, `editor`, `manager`.
- **Heavy dependency stack:** drutopia_core/seo, ds, paragraphs, facets, search_api, focal_point, field_group, metatag, pathauto, entity_reference_revisions, block_visibility_groups.

**Security:** No custom routes/controllers/services; access to events uses standard node access plus the role permissions granted by config actions. No anonymous mutation endpoints. Attack surface is configuration only.