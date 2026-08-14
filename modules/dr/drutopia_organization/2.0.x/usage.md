<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Drutopia Organization ships a ready-made Organization content type for sites that need to profile groups, nonprofits or businesses.

---

It is a configuration-carrying feature module: enabling it installs the `organization` node type with its fields, form/display modes, an image with focal point, paragraph-based body, field groups, pathauto aliases, metatag/SEO integration, faceted listing, and an "Add organization" action link on the organization listing view. Organizations can be associated with other Drutopia content (blogs, resources, events, etc.) so a site can present a directory of participating organizations. It builds on drutopia_core, drutopia_event and drutopia_seo plus supporting contrib (paragraphs, inline_entity_form, facets, focal_point, field_group, ds, pathauto, metatag).

The module provides content-model configuration, not custom PHP endpoints; access to organization nodes follows standard node permissions and any workflow you configure. Setup: enable the module (pulling its dependencies), then create Organization nodes and tune the display/fields as needed.

---
- Add an Organization content type to a Drutopia site.
- Build a directory of nonprofits, businesses or groups.
- Associate organizations with blogs, events and resources.
- Present organization profiles with an image and body paragraphs.
- Provide pathauto URL aliases for organizations.
- Add SEO metatags to organization pages.
- Offer a faceted listing of organizations.
- Show an "Add organization" link on the listing view.
- Use focal-point cropping for organization images.
- Group organization fields with field_group.
- Edit related items inline via inline_entity_form.
- Standardize organization data capture across editors.
- Feed organizations into search_api indexes.
- Extend the type with additional paragraphs.
- Reuse Drutopia display styles (ds) for layout.
- Maintain organization content as exportable config.
- Link events to their host organization.
- List member organizations on a landing page.
