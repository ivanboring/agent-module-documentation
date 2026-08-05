<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Geocoder AJAX Prepopulate (geocoder_ajax_prepopulate) — agent index

Populates Geocoder's target fields over **AJAX while the form is being filled in**, instead of
only on save. Depends on **`geocoder_field`** (the Geocoder submodule), not on `geocoder` as a
whole. Core requirement `^9.2 || ^10 || ^11`.

Key facts:
- No routes, no permissions, no configuration. Surface is `src/Ajax/` (the AJAX command),
  `js/change_when_ready.js`, `geocoder_ajax_prepopulate.libraries.yml` and the `.module`.
- It changes **when** geocoding happens, not **how**: the provider, field mapping and storage
  all remain whatever `geocoder_field` is already configured to do. Configure Geocoder first;
  this module has nothing to configure.
- `change_when_ready.js` is the debounce — it waits for the field to settle rather than firing
  per keystroke. Relevant when the provider is rate-limited or billed per request.
- Ships a `composer.lock` in the release tarball (unusual for a Drupal module; ignored when
  installed as a dependency).
