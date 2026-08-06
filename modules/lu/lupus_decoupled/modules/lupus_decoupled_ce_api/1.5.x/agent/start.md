<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Lupus Decoupled CE API (lupus_decoupled_ce_api) — agent index

Submodule of **lupus_decoupled**, and a **hard dependency of the top-level module**.
Provides the **custom elements API at `/ce-api`**. Version **1.5.1**. Core `^10 || ^11`.

The load-bearing piece and the reason the suite differs from a JSON:API build: Drupal renders
normally — formatters, text formats, view modes, access-aware markup — and emits `<drupal-…>`
elements; the front end hydrates them. Adding a field or changing a formatter needs **no**
front-end work.

**Integration fact to carry:** it **replaces the `file_url_generator` service** with
`Drupal\lupus_decoupled_ce_api\File\FileUrlGenerator`, which *implements*
`FileUrlGeneratorInterface` rather than extending the core class. Any module type-hinting the
**concrete** class fatals — verified against `complete_webform_exporter`, whose download route
returns 500 with a TypeError.