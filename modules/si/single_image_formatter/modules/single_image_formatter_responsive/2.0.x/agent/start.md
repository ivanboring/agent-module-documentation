# Single Responsive Image Formatter — agent index

Submodule of `single_image_formatter`. Adds one formatter that shows only the first value of a
multi-valued `image` field, rendered with core responsive image styles. No config page, permissions,
or Drush. Depends on core `responsive_image`.

Key facts:
- Formatter id `single_responsive_image_formatter` (field type `image`), extends
  `ResponsiveImageFormatter`; `getEntitiesToView()` returns only the first file.
- Inherits all responsive-image settings; schema reuses `field.formatter.settings.responsive_image`.
- Select on **Manage display**; see the parent's
  [formatters doc](../../../../2.0.x/agent/configure/formatters.md) for the config example.
