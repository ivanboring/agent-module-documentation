# Convert Media Tags to Markup — agent index

Converts legacy Drupal 7 `media_wysiwyg` embed tokens (`[[{"type":"media",...,"fid":"N",...}]]`)
into `<img>` markup — either at render time via a text filter, or permanently via a Drush-run
`DbReplacer`. No config UI (`configure` null), no permissions, no schema, no plugin types, no
registered Drush command. No module dependencies (uses core `file`/`filter`).

- **The `convert_legacy_media_tags_to_markup` filter, the token regex/output, and the XSS
  responsibility for enabling it** → [configure/filter.md](configure/filter.md)
- **Permanent DB conversion via `DbReplacer::replaceAll()` with `drush ev` (simulate first)** →
  [drush/dbreplacer.md](drush/dbreplacer.md)

Key facts:
- Filter id `convert_legacy_media_tags_to_markup`, `TYPE_TRANSFORM_IRREVERSIBLE`; `process()`
  → `App::instance()->filterText($text)`.
- Token regex `/\[\[\{.*?"type":"media".+?\}\]\]/s`; JSON-decoded; `File::load(fid)`; emits a
  `<div class="media …"><img style/alt/title/class src height width></div>` block.
- Attribute values (`alt`,`title`,`class`,`style`,`height`,`width`) are interpolated into the
  HTML **unescaped** → only enable on formats whose authors you trust (see filter.md).
- Permanent path: `DbReplacer::instance()->replaceAll($type, $bundle, $simulate)` via
  `drush ev`; `$simulate = TRUE` prints, `FALSE` saves.
