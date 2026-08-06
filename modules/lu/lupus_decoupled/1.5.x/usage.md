<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Lupus Decoupled is an opinionated decoupled Drupal setup for Nuxt.js: rather than exposing raw entity data and rebuilding rendering in the front end, Drupal renders to **custom elements** and the front end hydrates them.

---

That choice is the whole point, and it is a different bet from JSON:API-plus-a-component-library. In the usual decoupled build, Drupal emits data and the front end reimplements everything Drupal already knew how to render — field formatters, text formats, view modes, menus, forms, access-aware markup. Every one of those becomes front-end work, and every content-model change becomes front-end work again. Here Drupal keeps rendering, but into `<drupal-...>` custom elements, and Nuxt turns those into components. The content model stays Drupal's problem; presentation stays the front end's.

The suite is fifteen submodules, three of them required by the top-level module — `lupus_decoupled_ce_api` (the custom-elements API itself), `lupus_decoupled_cors` (cross-origin configuration, which a decoupled setup cannot avoid) and `lupus_decoupled_menu`. The rest are bridges for the things that are painful in a decoupled build precisely because they are not data: `lupus_decoupled_form` and `lupus_decoupled_user_form` for Drupal forms, `lupus_decoupled_webform`, `lupus_decoupled_contact`, `lupus_decoupled_views`, `lupus_decoupled_block`, `lupus_decoupled_layout_builder`, `lupus_decoupled_canvas`, `lupus_decoupled_schema_metatag` for structured metadata, `lupus_decoupled_site_info`, `lupus_decoupled_responsive_preview`, and `lupus_decoupled_api_log` for seeing what the front end actually requested.

**One integration note found while documenting.** `lupus_decoupled_ce_api` replaces the `file_url_generator` service with its own implementation — legitimately, since it implements `FileUrlGeneratorInterface`. Any module that type-hints the **concrete** `Drupal\Core\File\FileUrlGenerator` class instead of the interface will then fatal. Verified in this wave: `complete_webform_exporter` does exactly that and its download route returns HTTP 500 with a `TypeError` once this suite is installed. If a feature breaks after adopting Lupus Decoupled, a concrete type hint on a decorated service is the first thing to check.

---

- Build a Nuxt.js front end on Drupal.
- Render Drupal output as custom elements.
- Keep field formatters and text formats in Drupal.
- Avoid reimplementing view modes in the front end.
- Expose Drupal menus to a decoupled front end.
- Configure CORS for a decoupled setup.
- Submit a Drupal form from the front end.
- Handle webform submissions in a decoupled build.
- Expose a contact form to the front end.
- Render a View through the custom-elements API.
- Expose blocks to the front end.
- Support Layout Builder in a decoupled site.
- Emit schema.org metadata for the front end.
- Provide site information to the front end.
- Log what the front end requested.
- Preview responsively in a decoupled setup.
- Keep the content model as Drupal's concern.
- Check for concrete type hints on decorated services.