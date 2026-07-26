# Element Class Formatter Responsive Image — agent index

Adds one field formatter, **`responsive_image_class`** ("Responsive image (with class)"), that
puts CSS class(es) on a Responsive Image field's rendered element. Submodule of
`element_class_formatter`; also requires core `responsive_image`. No settings page, no `configure`
route, no permissions, no Drush. Ships a config schema.

- Configuration works exactly like the parent module's formatters →
  see `../../../2.1.x/agent/configure/formatters.md`.

Key facts:
- Formatter id **`responsive_image_class`**, for `image` fields. Extends core
  `ResponsiveImageFormatter`, mixes in the parent's `ElementEntityClassTrait` (class applied to
  `#item_attributes.class`).
- Same core Responsive Image settings (`responsive_image_style`, `image_link`) plus the added
  **`class`** setting.
- Stored in `core.entity_view_display.<entity>.<bundle>.<mode>` →
  `content.<field>.type: responsive_image_class`, `settings.class: '<classes>'`.
- Config schema `field.formatter.settings.responsive_image_class` extends
  `field.formatter.settings.responsive_image` with a `class` string.
- Installed automatically by the parent module's `update_8001` when `responsive_image` is enabled.
