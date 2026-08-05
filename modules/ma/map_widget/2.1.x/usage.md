<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Map Widget gives Drupal's `map` field items an actual editing UI: a repeatable key/value table where editors type arbitrary keys and values, instead of a field type that normally has no usable widget at all.

---

Drupal's typed-data `map` items store an associative array, which is fine for code but leaves site builders with nothing to put on a form. This module supplies the missing pieces: a form element `#type: map_associative` (`AssociativeArray`, declared with the modern `#[FormElement('map_associative')]` attribute) that renders and validates a set of key/value rows, and a field widget (`AssociativeArrayWidget`, `#[FieldWidget]`) that puts that element on any field storing map items. Widget settings are declared in `config/schema/map_widget.schema.yml` so they export cleanly, an install hook handles setup, and a small CSS library (`css/associative-element.css`) styles the rows. There is no configuration page, no permissions and no Drush — you enable the module and pick the widget on the field's form display. Because the element is a plain form element, it can also be reused directly in custom forms where you need an arbitrary key/value input.

---

- Give editors a UI for a field that stores an associative array.
- Collect arbitrary key/value settings on a content type.
- Store per-entity configuration without a new field type.
- Let editors add custom data attributes to an entity.
- Capture a small lookup table on a node.
- Provide key/value metadata for an integration.
- Reuse the map_associative element in a custom form.
- Add extra parameters to an API-backed entity.
- Store per-item labels and values for a widget.
- Avoid building a bespoke multi-value field.
- Keep arbitrary settings queryable in the map field.
- Add flexible metadata to media entities.
- Let editors define tracking parameters per page.
- Collect translation keys and values inline.
- Provide a simple alternative to paragraphs for key/value data.
- Export the widget configuration with the form display.
- Style the key/value rows with the shipped CSS.
- Validate the entered pairs before save.
- Support several map fields on one form.
- Give developers a ready-made associative-array element.
