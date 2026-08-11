<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Atomic CAS stores files by content hash (deduplicated) behind cas-public/cas-private stream wrappers.

---

Atomic Content-Addressable Storage (CAS) stores files by their content hash so identical bytes are stored once (deduplication), exposing `cas-public://` and `cas-private://` stream wrappers that preserve full Drupal file entity semantics. Files are served through a controller at `/files/cas/{fid}/{short_hash}/{filename}`, and image-style derivatives are stored once at a shared hash-based location.

Private files are properly protected: the serve controller invokes `hook_file_download()` for `cas-private://` URIs (mirroring core's FileDownloadController) and denies access when no module grants it — so the anonymous serve route does not expose private content. Administration is gated by `administer atomic cas`. Depends on core `file`; supports Drupal 10.2+ and 11.

---

- Store files by content hash.
- Deduplicate identical file bytes.
- Provide `cas-public://` stream wrapper.
- Provide `cas-private://` stream wrapper.
- Preserve Drupal file entity semantics.
- Serve files via a controller route.
- Store image derivatives once (shared hash path).
- Gate private files via `hook_file_download()`.
- Deny private access when no module grants.
- Mirror core's FileDownloadController logic.
- Gate admin with `administer atomic cas`.
- Depend on core `file`.
- Support Drupal 10.2+ and 11.
- Support X-Accel-Redirect / X-Sendfile serving.
- Reduce storage via dedup.
- Use ETag/If-None-Match caching.
- Manage CAS blobs.
- Keep private content protected.
