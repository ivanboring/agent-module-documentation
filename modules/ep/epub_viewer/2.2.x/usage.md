<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Epub Viewer (module machine name `epub_module`, project `epub_viewer`) is a field formatter that renders links to `.epub` file-field values and opens them in a bundled in-browser e-book reader — no external library download required.

---

Apply the *Epub Formatter* (`epub_field_formatter`) to a file field: for items with MIME type `application/epub+zip` it outputs a link to `/view-ebook/{fid}`; other files fall back to the normal file link. The viewer route `epub_module.epub` (`EpubController::viewEbook`) loads the file by id, generates its absolute URL and renders the reader theme (`epub_view`) with colour/appearance options. Appearance (background/icon/font colours, download-icon visibility) is configured at `/admin/config/epub/epubsettings` (route `epub_module.epub_settings_form`, permission `access administration pages`). Enable the module from Extend, add a file field, select the Epub Formatter, and upload EPUB files.

Security note: the viewer route `/view-ebook/{fid}` is gated only by `_permission: 'access content'` (effectively available to anonymous users on most sites) and `EpubController::viewEbook()` loads an **arbitrary** file entity by the `{fid}` route argument with no entity-level access check — a low-severity IDOR: a visitor can enumerate file ids and obtain the generated (absolute) URL for any file, including ones not meant to be surfaced through this reader. For public-scheme files the URL is already public, so real disclosure is limited; private-scheme files still enforce access on download. There is also no null-check when a non-existent `fid` is requested (`$file->getFileUri()` on `NULL`), a robustness bug. Consider restricting the route to a stronger permission and adding a `$file` access/existence check. The settings route is admin-gated.

---
- Enable the module from Extend (machine name `epub_module`).
- Create a file-upload field for EPUB files.
- Set the field's display formatter to *Epub Formatter*.
- Upload an `.epub` file and view the generated reader link.
- Open the in-browser reader at `/view-ebook/{fid}`.
- Configure appearance at `/admin/config/epub/epubsettings`.
- Set the reader background colour.
- Set the reader icon colour.
- Set the reader font colour.
- Toggle the download-icon visibility in the reader.
- Let readers page through EPUB content in the browser.
- Fall back to a normal file link for non-EPUB files.
- Use the bundled reader (no external library needed).
- Restrict the `/view-ebook/{fid}` route to a stronger permission (hardening).
- Add a file access/existence check before rendering (hardening).
- Store EPUB files in a private scheme for access-controlled downloads.
