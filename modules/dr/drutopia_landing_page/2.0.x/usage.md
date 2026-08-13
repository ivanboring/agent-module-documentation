<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
A deprecated Drutopia "feature" module that installs a Landing Page content type and its supporting configuration for building standalone pages such as a home page.

---

The module is configuration-only (no PHP): its `config/install` ships the `landing_page` node type, a paragraph body field (`field_body_paragraph` via entity_reference_revisions), a meta tags field, entity form/view displays (default, full, teaser using Display Suite), a pathauto pattern, and a promote base-field override. It builds on the Drutopia stack (drutopia_core, drutopia_seo), Paragraphs, Display Suite, Exclude Node Title, Metatag and Pathauto to give a paragraph-composed landing page out of the box.

The module is explicitly marked DEPRECATED in its own name and description — the maintainers recommend using the generic Page feature instead — so it should not be chosen for new builds. It defines no routes, services, permissions, or code, so access to landing pages is governed entirely by core node permissions and the shipped view/display configuration. Typical (legacy) use is enabling it to obtain a ready-made landing/home page content type, then adding paragraph content and metatags per node.
---
- Provide a ready-made Landing Page content type (legacy)
- Build a home page as a landing page node
- Compose page content from paragraphs
- Add a paragraph body field to landing pages
- Attach meta tags to landing pages via Metatag
- Generate landing-page URL aliases via Pathauto
- Use Display Suite layouts for the landing page display
- Exclude the node title on landing pages
- Ship default/full/teaser view displays for landing pages
- Provide a standalone page type separate from articles
- Bootstrap a Drutopia site's page-building content type
- Override the promote-to-front setting for landing pages
- Serve as a base for custom marketing pages
- Reuse Drutopia SEO defaults on landing pages
- Migrate legacy landing pages before moving to Page
- Understand deprecated config when auditing a Drutopia site
- Reference its config as an example feature module