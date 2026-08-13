<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Drutopia Page is a Drutopia base feature that installs a Basic "page" content type and its related fields, displays, path pattern and roles for static content such as an About-us page.
---
The module is a configuration-only Feature (no PHP): enabling it imports a `node.type.page`, body and summary text fields, a `field_body_paragraph` (entity-reference-revisions to Paragraphs) field, a `field_meta_tags` metatag field, form/view displays (default, full, teaser) built with Display Suite, an RDF mapping, and a `pathauto.pattern.node_page` URL pattern. It also ships `config/actions` that grant page create/edit/delete permissions to the Drutopia `contributor`, `editor`, and `manager` roles.

It depends on the wider Drutopia stack (`drutopia_core`, `drutopia_seo`) plus Paragraphs, Display Suite, Metatag, Pathauto, and Token. Because it is delivered as default config, the typical task is simply to install it and then extend the page type (add fields, tune displays, adjust the pathauto pattern). There are no routes, services, forms, or permissions defined in code beyond the imported config; security posture is entirely that of the standard node/permissions system.
---
- Add a ready-made Basic "page" content type for static content.
- Give editors a body field plus a separate summary field on pages.
- Attach Paragraphs to pages via the `field_body_paragraph` field.
- Add per-page meta tags through the bundled Metatag field.
- Auto-generate page URL aliases from the bundled pathauto pattern.
- Grant page create/edit/delete to Drutopia contributor/editor/manager roles.
- Provide default, full, and teaser view displays via Display Suite.
- Build an About-us or other static page out of the box.
- Use as the page foundation for a Drutopia-based site.
- Extend the page type with additional fields after install.
- Adjust the node_page pathauto pattern to match your URL scheme.
- Customize the Display Suite layouts for full and teaser views.
- Rely on the RDF mapping for structured page metadata.
- Combine with drutopia_storyline to add timeline paragraphs to pages.
- Reuse the summary field for teaser listings and search snippets.
- Manage page SEO via the drutopia_seo dependency.
- Import the feature as part of a repeatable Drutopia site build.
- Remove the module to uninstall the page type config (with content caveats).