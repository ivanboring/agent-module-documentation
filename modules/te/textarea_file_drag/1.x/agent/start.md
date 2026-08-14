<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Textarea File Drag'n'Drop (textarea_file_drag) — agent index
**Drag-and-drop file upload for textareas; returns a public file URL via AJAX.**

- **Version:** 1.x (dev checkout, composer.lock `dev-1.x`)
- **Core:** ^8 || ^9 || ^10 || ^11 || ^12
- **Configure:** `textarea_file_drag.settings` — `/admin/config/media/textarea-file-drag` (`administer site configuration`)
- **Routes:** `textarea_file_drag.upload` `/ajax/textarea-file-drag` — permission `dragndrop files to textarea`.
- **Permission:** `dragndrop files to textarea` (gates both the widget and the upload endpoint).
- **Security:** Upload gated by a dedicated permission (not anonymous), but validates only by client-supplied extension against an allowlist — **no MIME check, no size limit, no file entity**, files go to `public://`. Default allowlist includes `svg` → stored-XSS risk when served publicly. `TextareaFileDragController::upload()` sinks: `$file->getClientOriginalExtension()` check + `FileSystem::move()` into config `upload_path`.

See [configure/settings.md](configure/settings.md)
