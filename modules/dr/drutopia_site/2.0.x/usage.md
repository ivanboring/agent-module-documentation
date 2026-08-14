<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Drutopia Site is a configuration-only base feature that installs the shared site building blocks used across the Drutopia distribution.
---
The module ships no PHP logic of its own beyond update hooks; its value is the exported configuration in `config/install` and `config/actions`. On install it creates four text formats (`basic_html`, `full_html`, `restricted_html`) with matching CKEditor 5 editors, two `block_content` bundles (`basic` with a body field, and `slide`), their default form/view displays, and — via `config/actions` (config_actions) — a set of editorial roles (`contributor`, `editor`, `manager`) plus tweaks to the `authenticated`/`anonymous` roles and `autosave_form` settings.

It pulls in a broad dependency set (admin_toolbar + tools/search, ds, paragraphs, entity_reference_revisions, menu_admin_per_menu, role_delegation, autosave_form, drutopia_core) so that a Drutopia site has a consistent authoring toolbar, menu delegation, and content-editing baseline. Update hooks (`drutopia_site_update_8101/8102/9201`) swap the obsolete `admin_links_access_filter` for `admin_toolbar_links_access_filter` and enable the newer dependencies. There are no routes, services, permissions, or controllers in this module — nothing is exposed to anonymous users beyond what the imported roles/formats grant.

Typical setup is simply enabling the module on a Drutopia (or Drutopia-like) site and then managing the resulting roles, block types, and text formats through the normal core admin UIs.
---
- Install the Drutopia baseline text formats and CKEditor 5 editors in one step.
- Provide `basic` and `slide` block content types for the site.
- Seed editorial roles (contributor, editor, manager) for a content team.
- Delegate role assignment with role_delegation without granting full user admin.
- Restrict per-menu editing with menu_admin_per_menu.
- Enable autosave on content forms via autosave_form.
- Give editors the admin toolbar with search and links-access filtering.
- Add a body field to the `basic` block type.
- Configure default and columnar view displays for the `slide` block type.
- Use as a dependency of higher-level Drutopia features (article, blog, campaign).
- Standardise text-format permissions across sites.
- Bootstrap a new Drutopia install's editorial config.
- Migrate an older site off admin_links_access_filter via update hook.
- Manage the created roles at /admin/people/roles.
- Edit the installed text formats at /admin/config/content/formats.
- Create reusable slide blocks for carousels/hero regions.
- Keep authoring UX consistent across a fleet of Drutopia sites.
- Layer Drutopia content-type features on top of this base.
- Export/override the shipped config in a site-specific feature.
- Review granted permissions per role after install.
- Combine with drutopia_user and drutopia_social for a fuller base.
