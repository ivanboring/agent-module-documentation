<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Existing Values Autocomplete Widget (existing_values_autocomplete_widget) — agent index

Text-field widget that autocompletes from values already stored in the same field. Depends on
core `field` and `text`. Core requirement `^10.1 || ^11`.
**Current release is 2.0.0-rc1 — release candidate.**

Key facts:
- One route, `/existing-values/autocomplete/{entity_type_id}/{bundle}/{field_name}`, with
  `_permission: 'access content'` and `[a-z_]+` patterns on all three parameters.
  Despite the permissive-looking requirement, `AutocompleteController::handleAutocomplete()`
  applies two real gates:
  1. it reads the bundle's **form display** and returns `[]` unless the component's widget type
     is `existing_autocomplete_field_widget` — so only fields deliberately configured with this
     widget are queryable;
  2. per candidate value it loads a representative entity and requires **both**
     `$entity->access('view')` and `$entity->get($field_name)->access('view')`.
- Behavioural quirk to know: the SQL selects from the field's data table for the *entity type*
  and does **not** filter by `{bundle}` — the bundle argument is used only to look up the form
  display. Suggestions can therefore include values stored on other bundles sharing the field
  name. Access is still checked per value, so this is a correctness surprise, not a disclosure.
- Distinct values come from `MIN(f.entity_id)` grouped by the value column, so the access check
  is made against one representative entity per value.
- Suggestion count comes from the widget's `suggestions_count` setting (default 15).
