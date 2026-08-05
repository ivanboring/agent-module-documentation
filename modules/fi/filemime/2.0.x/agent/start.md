<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# File MIME (filemime) — agent index

Rewrites the MIME type Drupal records for uploaded files, from a server `mime.types` map and/or
administrator overrides. Depends on core `file`. Settings at `/admin/config/…/filemime`.
Version **2.0.2**. **Core requirement `^11.2 || ^12` — Drupal 11.2+ only**, tight.

**Why the recorded type matters:** it becomes the **`Content-Type` header on download**, deciding
whether a browser displays a PDF or downloads it, whether a font loads, whether a video plays. A
wrong type is a file that "does not work" for reasons invisible from the Drupal side. Drupal guesses
from the **extension**, and modern formats (`webp`, `avif`, `woff2`, `geojson`) arrive faster than
the mapping is updated.

**The security point runs opposite to the module's purpose, so state it: MIME type is a claim, not a
fact.** Forcing a type asserts something about content nobody has inspected.
- A file recorded as `image/png` **is not a PNG**. Anything downstream trusting the recorded type
  rather than the bytes — an image processor, a viewer, a client application — is **trusting the
  uploader**.
- **Extension-based validation remains the actual upload control**; this changes the label, not the
  contents. A rule mapping an unexpected extension to a permissive type is a way to **smuggle one
  thing past a check meant for another**.
