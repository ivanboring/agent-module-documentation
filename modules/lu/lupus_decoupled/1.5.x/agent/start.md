<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Lupus Decoupled (lupus_decoupled) — agent index

Opinionated decoupled Drupal for **Nuxt.js**: Drupal renders to **custom elements**, the front end
hydrates them. Version **1.5.1**. Core `^10 || ^11`.
Requires its own `lupus_decoupled_ce_api`, `lupus_decoupled_cors`, `lupus_decoupled_menu`.

**The architectural bet, and why it differs from JSON:API + a component library:** Drupal keeps
rendering — field formatters, text formats, view modes, menus, access-aware markup — into
`<drupal-…>` elements, instead of the front end reimplementing all of it. Content-model changes
stay Drupal's problem.

15 submodules: `_ce_api` (the API), `_cors`, `_menu` (required); then `_form`, `_user_form`,
`_webform`, `_contact`, `_views`, `_block`, `_layout_builder`, `_canvas`, `_schema_metatag`,
`_site_info`, `_responsive_preview`, `_api_log` — bridges for the things that are hard in a
decoupled build because they are not data.

**Integration note, verified this wave.** `lupus_decoupled_ce_api` **replaces the
`file_url_generator` service** with `Drupal\lupus_decoupled_ce_api\File\FileUrlGenerator`, which
*implements* `FileUrlGeneratorInterface` rather than extending the core class. Any module that
type-hints the **concrete** class fatals: `complete_webform_exporter` does, and its download route
returns 500 with a `TypeError`. When something breaks after adopting this suite, check for a
concrete type hint on a decorated service first.