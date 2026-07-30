# Entity reference override Entity Browser (entity_reference_override_entity_browser) — agent index

Submodule of **entity_reference_override**. Adds ONE field widget so `entity_reference_override`
fields can select entities via **Entity Browser** while still capturing a per-reference override
(custom title). No config form, no permissions, no services. Depends on `entity_browser` and
`entity_reference_override`.

This is a thin widget shim — the facts below are the whole surface.

Key facts:
- Widget plugin id **`entity_browser_entity_reference_override`** (label "Entity browser"),
  class `Drupal\entity_reference_override_entity_browser\Plugin\Field\FieldWidget\EntityReferenceOverrideEntityBrowser`,
  `multiple_values = TRUE`, `field_types = {entity_reference_override}`.
- Extends Entity Browser's `EntityReferenceBrowserWidget`; adds an `override` textfield to each
  row of the widget's `current` items table (title/placeholder from the field's `override_label`).
- Override values survive AJAX add/remove: they are serialised into a hidden
  `entity_reference_override_default_values` element and re-read; `massageFormValues()` copies each
  row's `override` back onto the saved field values.
- Config schema `field.widget.settings.entity_browser_entity_reference_override` extends
  `field.widget.settings.entity_browser_entity_reference` (no extra keys).
- To use: on **Manage form display** of a bundle with an `entity_reference_override` field, set the
  widget to **"Entity browser"** (and configure the Entity Browser as usual).
- Parent field type, formatters and `override_action` modes: see
  modules/en/entity_reference_override/2.0.x/agent/.
