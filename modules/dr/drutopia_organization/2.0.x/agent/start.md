<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Drutopia Organization (drutopia_organization) — agent index

**Installs an `organization` content type and related config for listing organizations on a Drutopia site.**

- **Version:** 2.0.x · **Core:** ^10.2 || ^11 || ^12 · **Package:** Drutopia
- **Contents:** feature config (node type `organization`, fields, form/display, field groups, pathauto, metatag/SEO, facets, focal point) + action link `drutopia_organization.add_organization` on `view.organization.page_listing`.
- **Depends on:** drutopia_core, drutopia_event, drutopia_seo, paragraphs, inline_entity_form, facets, focal_point, field_group, ds, pathauto, metatag, and core field/image/taxonomy/views.
- **Security:** configuration-only feature; no custom routes/controllers or permissions. Node access follows standard node permissions/workflow. No findings.
