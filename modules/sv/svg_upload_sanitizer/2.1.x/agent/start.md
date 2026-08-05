<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# SVG Upload Sanitizer (svg_upload_sanitizer) — agent index

Sanitises SVG uploads with **`enshrined/svg-sanitize ~0.22`**. Depends on core `file`.
PHP `^8.1`. Core requirement `^10 || ^11`. No routes, no permissions, no configuration.

Key facts:
- **Why it matters:** SVG is executable XML. A file containing `<script>`, `on*` handlers or
  `<foreignObject>` served from the site's own origin runs JavaScript with the visitor's session.
  Allowing SVG uploads without sanitisation is a standard stored-XSS finding.
- **Sanitises on upload**, before storage (`src/HookHandler/`, `src/Helper/`,
  `svg_upload_sanitizer.services.yml`). That is the right point — the stored file is what gets
  served later.
- Limits worth stating:
  - it only sees files uploaded **through Drupal**; anything placed on disk by migration, rsync
    or a direct file API call bypasses it;
  - it is an allow-list cleaner, so its safety depends on the library version — keep
    `enshrined/svg-sanitize` current;
  - the strongest complementary control is still serving user-uploaded files from a **separate
    domain**, which removes same-origin execution regardless of file content.
- Pairs with `file_mime_validator` (wave 59): that one checks the file is what it claims to be,
  this one cleans it once it is.
