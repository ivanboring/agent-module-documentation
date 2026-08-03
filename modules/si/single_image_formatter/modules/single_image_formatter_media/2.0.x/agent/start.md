# Single Media Thumbnail Formatter — agent index

Submodule of `single_image_formatter`. Adds one formatter that shows only the first value of a
multi-valued media reference field, rendered as a media thumbnail. No config page, permissions, or
Drush. Depends on core `media`.

Key facts:
- Formatter id `single_media_formatter` (field type `entity_reference`), extends
  `MediaThumbnailFormatter`; `getEntitiesToView()` returns only the first referenced item.
- Inherits all media-thumbnail settings; schema reuses `field.formatter.settings.media_thumbnail`.
- Select on **Manage display**; see the parent's
  [formatters doc](../../../../2.0.x/agent/configure/formatters.md) for the config example.
