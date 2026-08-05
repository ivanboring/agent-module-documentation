<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
File MIME rewrites the MIME type Drupal records for an uploaded file, using a server `mime.types` map and administrator-supplied overrides.

---

Drupal guesses a file's MIME type from its extension, and the guess is wrong often enough to matter. Modern formats arrive faster than the mapping is updated, so a `.webp`, an `.avif`, a `.woff2` or a `.geojson` can be recorded as `application/octet-stream`; office documents have famously long and easily mistyped types; and anything with a bespoke extension gets nothing useful at all. The recorded type is not cosmetic: it becomes the `Content-Type` header on download, which decides whether a browser displays a PDF or downloads it, whether a font loads, and whether a video plays — so a wrong type is a file that "does not work" for reasons nobody can see from the Drupal side. Version **2.0.2** on **`^11.2 || ^12`** — a tight requirement, Drupal 11.2 or later only — depending on core `file`. The security point is worth stating because it runs opposite to the module's purpose: **MIME type is a claim, not a fact**, and forcing a type onto a file is asserting something about content nobody has inspected. A file recorded as `image/png` is not a PNG, and anything downstream that trusts the recorded type rather than validating the bytes — an image processor, a viewer, a client application — is trusting the uploader. Extension-based validation remains the actual upload control, and this module changes the label rather than the contents; a rule that maps an unexpected extension to a permissive type is a way to smuggle one thing past a check meant for another.

---

- Fix a WebP recorded as octet-stream.
- Set the correct type for AVIF uploads.
- Make a PDF display rather than download.
- Fix a font failing to load.
- Correct office document MIME types.
- Set a type for a bespoke extension.
- Fix video playback from a file field.
- Use the server's mime.types map.
- Override a type for one extension.
- Fix a download prompt for images.
- Correct types after a migration.
- Support a new image format.
- Fix a GeoJSON download.
- Set a type for a data export.
- Correct types for archive files.
- Support an unusual document format.
- Fix Content-Type headers on files.
- Standardise MIME handling site-wide.
