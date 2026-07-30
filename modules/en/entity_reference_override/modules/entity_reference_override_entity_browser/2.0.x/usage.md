Entity reference override Entity Browser adds an Entity Browser–based widget for `entity_reference_override` fields, so editors can pick entities through an Entity Browser and still type a per-reference override (custom title) for each selected item.

---

This submodule provides a single field widget, `entity_browser_entity_reference_override` ("Entity browser"), for the `entity_reference_override` field type. It extends Entity Browser's `EntityReferenceBrowserWidget`, so entity selection happens through whatever Entity Browser you configure, and augments the widget's "current items" table: each selected item gets an extra `override` textfield (labelled/placeholdered from the field's `override_label` setting). It carefully preserves override values across the widget's AJAX add/remove operations by serialising a default-value map into a hidden `entity_reference_override_default_values` element and re-reading it on the relevant triggering element, and it re-maps override values in `massageFormValues()` and when items are removed. It depends on both `entity_browser` and `entity_reference_override`, adds no configuration form, no permissions and no services — just the widget plugin (config schema extends `field.widget.settings.entity_browser_entity_reference`).

---

- Let editors select referenced entities via an Entity Browser instead of an autocomplete, while still overriding each item's title.
- Curate a media gallery through the media Entity Browser and give each item a custom caption/title per placement.
- Pick multiple nodes from an Entity Browser and set a per-reference display title for each.
- Keep override text intact while adding or removing items in the Entity Browser widget (AJAX-safe).
- Use a modal/iframe Entity Browser for reference selection on an `entity_reference_override` field.
- Provide a richer selection UX (search, views, upload) for overridable references.
- Set the override box label/placeholder per field via the parent field's `override_label` setting.
- Replace the default autocomplete widget with an Entity Browser widget on Manage form display.
- Support multi-value overridable reference fields with a browser-based selection table.
- Combine Entity Browser's bulk selection with entity_reference_override's per-item custom text.
- Build editorial "featured content" widgets where items are browsed and titled in one place.
- Reorder browsed items while retaining their override values.
- Remove a single browsed item without losing the override values of the remaining items.
- Use Entity Browser's media library integration together with per-reference titles.
- Give content teams a familiar Entity Browser flow plus contextual title overrides.
- Avoid duplicating media/nodes just to show different titles in different browsers/placements.
