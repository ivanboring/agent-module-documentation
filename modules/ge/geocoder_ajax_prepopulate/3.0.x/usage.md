<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Geocoder AJAX Prepopulate fills geocoded fields in as the editor types, rather than waiting for the form to be saved before the address is turned into coordinates.

---

The Geocoder module's normal flow is save-then-geocode: the address field is submitted, `geocoder_field` runs the configured geocoding provider, and the latitude/longitude or formatted-address fields are populated during presave. That works, but it hides the result until after the save, so an editor who mistyped a street name finds out only when the map is wrong. This module moves the feedback forward. `src/Ajax` supplies the AJAX command, `js/change_when_ready.js` handles the timing on the client — waiting until the field has settled rather than firing on every keystroke — and `geocoder_ajax_prepopulate.libraries.yml` attaches it. It depends on `geocoder_field` specifically, not on Geocoder as a whole, so it slots into an existing Geocoder configuration without changing which provider is used or how the values are stored. The module ships no routes, permissions or configuration of its own; it is a behaviour layer over a configuration that already exists. Note it ships a `composer.lock` alongside `composer.json`, which is unusual for a Drupal module and irrelevant when installed as a dependency.

---

- Show geocoded coordinates before the form is saved.
- Let editors verify an address resolves correctly.
- Populate latitude and longitude as the address is typed.
- Catch a mistyped address at entry time.
- Reduce save-and-check cycles on location content.
- Prefill a formatted address from a partial one.
- Improve confidence in map placement.
- Avoid saving content with bad coordinates.
- Give editors immediate geocoding feedback.
- Keep using an existing Geocoder provider.
- Reduce geocoding provider calls from repeated saves.
- Support a venue or branch directory workflow.
- Prefill a region or country field.
- Speed up bulk address entry.
- Show a map preview as the address is entered.
- Fit AJAX geocoding into an existing setup.
- Debounce geocoding requests while typing.
- Reduce editor training on geocoding behaviour.
