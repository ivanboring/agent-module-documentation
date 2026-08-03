# Config Default SVG Image — agent index

Submodule of **config_default_image**. One formatter, `config_default_svg_image`
("Image or default image (SVG compatible)"), = `svg_image`'s `SvgImageFormatter` +
`ConfigDefaultImageFormatterTrait`. Config-deployable default image that supports `.svg`. No own
config page, permissions, Drush, or schema (reuses parent `config_default_image` schema type).
Depends on `config_default_image` + `svg_image`.

- **Setup and the shared `default_image` settings keys / render+copy behavior** →
  parent doc [../../../../2.0.x/agent/configure/formatter.md](../../../../2.0.x/agent/configure/formatter.md)

Nested submodule (own docs):
- `config_default_responsive_svg_image` → [../../modules/config_default_responsive_svg_image/2.0.x/agent/start.md](../../modules/config_default_responsive_svg_image/2.0.x/agent/start.md)

Key facts:
- Formatter id `config_default_svg_image`, field type `image`, extends
  `Drupal\svg_image\...\SvgImageFormatter`.
- Same `settings.default_image` keys as the parent; only the base formatter differs (SVG-aware).
- Same unvalidated-`path` caution applies (see parent `security.md`).
