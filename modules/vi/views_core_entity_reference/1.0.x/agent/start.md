# Views Core Entity Reference — agent index

Zero-config glue module: makes Views use Drupal Core's `entity_reference` filter for
entity-reference field `*_target_id` columns, so filters render as Select/Autocomplete of
the referenced entities instead of a numeric/string id comparison. Requires `views`,
core 10.2+. No settings, permissions, plugins, config schema, or Drush.

Just enable it — behaviour applies automatically; no sub-docs warranted.

Key facts:
- `views_core_entity_reference_views_data_alter(&$data)`
  (`views_core_entity_reference.module`): loads all `field_config` of type
  `entity_reference`; for each, target table `<entity_type>__<field_name>`, column
  `<field_name>_target_id`. If that column's `filter.id` is currently `numeric` or
  `string`, it is set to `entity_reference`.
- `hook_install()` → `_views_core_entity_reference_update_as_a_reference()`
  (`views_core_entity_reference.install`): one-time migration of existing `views.view.*`
  config from the old core patch — strips the `_reference` suffix from filter keys, `id`,
  and exposed `operator_id`/`operator` (e.g. `..._target_id_reference` → `..._target_id`,
  `..._reference_op` → `..._op`) and resaves changed views.
- After enabling, rebuild Views caches (`drush cr`) and re-check exposed filters on
  entity-reference fields; they should now offer Select/Autocomplete widgets.
