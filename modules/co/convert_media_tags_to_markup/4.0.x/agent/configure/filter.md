# The text filter

## Enable it

1. Go to *Configuration → Text formats and editors*
   (`/admin/config/content/formats/manage/<format>`, e.g. `full_html`).
2. Check **"Convert Legacy Media Tags to Markup"** and save.
3. Content in that format now has its media tokens rendered as images on output.

There is no settings form for the filter — it has no `#settings`.

## What it does (`App::filterText` / `App::tokenToMarkup`)

- Matches tokens with `/\[\[\{.*?"type":"media".+?\}\]\]/s`.
- For each: strips `[[`/`]]`, `Json::decode()`s the blob, requires a `fid`, then
  `File::load($fid)` (throws → logged, token replaced with `''`).
- Builds the src via `file_url_generator` (`generateAbsoluteString()` →
  `transformRelative()`).
- Emits:

```html
<div class="media media-element-container media-default">
  <div id="file-<fid>" class="file file-image">
    <div class="content">
      <img style="<style>" alt="<alt>" title="<alt>" class="<class>" src="<url>" <height> <width>>
    </div>
  </div>
</div>
```

- Plugin type `TYPE_TRANSFORM_IRREVERSIBLE`: it rewrites on the way out and is not reversible,
  so order it appropriately relative to other filters. On a top-level exception the whole
  filter returns the original text unchanged (`watchdogThrowable` logs it).

## XSS responsibility (by design — document, don't disable)

The `<img>` is assembled by string concatenation and the token attributes — `alt`, `title`,
`class`, `style`, `height`, `width` — are **inserted without escaping**. The token content is
authored (or migrated) content, so whoever can write text in a format that has this filter
enabled controls those attribute values; a crafted `alt`/`style`/etc. containing a `"` can
break out of the attribute and inject markup/handlers (stored XSS).

Mitigations for site builders:

- Enable this filter only on formats restricted to trusted roles (as with any raw-HTML filter).
- Keep a **"Limit allowed HTML tags and correct faulty HTML"** filter enabled on the same
  format so injected markup is sanitized; order it to run after this transform.
- Prefer the one-time `DbReplacer` conversion (see `drush/dbreplacer.md`) and then remove the
  runtime filter, so untrusted input is never passed through it live.
