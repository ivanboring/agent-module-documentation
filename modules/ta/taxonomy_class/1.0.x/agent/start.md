# Taxonomy Class — agent index

Adds one string base field `taxonomy_class` ("CSS class(es)") to every taxonomy term and outputs its
first value as a class on the rendered term. No config UI, no dependencies, no config schema, no plugins.

Everything worth knowing (small module, no solution subdocs needed):
- **Base field:** `taxonomy_class` (string) added to `taxonomy_term` via
  `hook_entity_base_field_info`. Display-configurable on the term form; weight 35.
- **Form:** `hook_form_taxonomy_term_form_alter` wraps the field in a collapsed "Taxonomy Class
  settings" details group (`#group => 'advanced'`) — shown ONLY to users with permission
  `administer taxonomy classes`; otherwise the alter returns early and the field is not exposed.
- **Output:** `taxonomy_class_preprocess_taxonomy_term` reads
  `$term->get('taxonomy_class')->getValue()[0]['value']` and appends it to
  `$variables['attributes']['class']`. Only the FIRST value is used. Rendered through core's
  `Attribute` object (escaped on output).
- **Permission:** `administer taxonomy classes` (in `taxonomy_class.permissions.yml`; no
  `restrict access` flag) — gates visibility/editability of the class field on the term form.
- **Set programmatically:** `$term->set('taxonomy_class', 'my-class')->save();`
