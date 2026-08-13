<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Epub Viewer (epub_viewer / machine name `epub_module`) — agent index

**Field formatter that links EPUB file fields to a bundled in-browser e-book reader.**

- **Version:** 2.2.x  **Core:** ^9.3 || ^10 || ^11
- **Enable name:** `epub_module` (project/directory: `epub_viewer`)
- **Formatter:** `epub_field_formatter` (*Epub Formatter*) on file fields; EPUB → link to `/view-ebook/{fid}`.
- **Viewer route:** `epub_module.epub` → `/view-ebook/{fid}` (perm `access content`), `EpubController::viewEbook`, theme `epub_view`.
- **Settings route:** `epub_module.epub_settings_form` → `/admin/config/epub/epubsettings` (perm `access administration pages`), config `epub_module.epubsettings` (colours, download icon).
- **Security:** ⚠ `/view-ebook/{fid}` gated only by `access content` (anon-capable) and `EpubController::viewEbook()` loads an arbitrary file by `{fid}` with **no entity access check** — low-severity IDOR / file-URL disclosure (public files already public; private files still access-checked on download). Also no null-check for a missing `fid` (`$file->getFileUri()` on NULL). Harden by requiring a stronger permission + adding a file access/existence check. Settings route is admin-gated.
