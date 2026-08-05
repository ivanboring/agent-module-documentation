<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Existing Values Autocomplete Widget turns a plain text field into an autocomplete that suggests values already entered in that same field elsewhere, so free-text fields stay consistent without becoming taxonomy references.

---

Free-text fields drift: "Manchester", "manchester" and "Manchester " all end up in the database because nothing showed the editor what already existed. Converting the field to a taxonomy reference solves consistency but adds a vocabulary to maintain and changes the data model. This widget is the middle path — the field stays a text field, but typing into it suggests what has been used before. The implementation is a field widget plus a JSON autocomplete route, `/existing-values/autocomplete/{entity_type_id}/{bundle}/{field_name}`, and the controller is more careful than the open-looking route requirement (`access content`) suggests: it first checks that the field's **form display component is actually this widget** and returns an empty array otherwise, then loads a representative entity per distinct value and returns the value only if `$entity->access('view')` and the field's own view access both pass. Route parameters are additionally constrained by `[a-z_]+` patterns. A per-widget setting controls how many suggestions are returned. Dependencies are core `field` and `text`; the current release is 2.0.0-rc1.

---

- Suggest previously used values while typing in a text field.
- Keep free-text fields consistent without a vocabulary.
- Reduce spelling variants in editorial metadata.
- Help editors reuse an existing label.
- Avoid converting a field to a taxonomy reference.
- Standardise a department or location field.
- Show recent values for a rarely used field.
- Limit how many suggestions appear.
- Improve data quality in reports built on a text field.
- Onboard new editors to a site's existing conventions.
- Cut duplicate values before they are created.
- Keep the data model unchanged while improving input.
- Apply to any text field via the form display.
- Reduce cleanup work in a later migration.
- Make faceted filtering on a text field usable.
- Suggest values without exposing inaccessible content.
- Give a legacy field better input ergonomics.
- Support a bounded but unmanaged value set.
