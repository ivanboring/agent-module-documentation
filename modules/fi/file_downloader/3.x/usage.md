<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
File Downloader provides configurable download options for file fields, exposing one or more download links per file through a plugin system — and it correctly enforces the file's own view access.

---

A file field can need more than one download option — the original, a converted format, a watermarked copy. File Downloader (based on File Download) makes download options a plugin system: each configured option exposes a link, served through a controller route. Because it serves files through a route, the critical question is access, and this module gets it right — verified by reading the chain: the download controller delegates to the download-option config, which requires a per-option permission (`use {id} download option link`), checks the file extension, and then calls the plugin's `access()`, whose base implementation checks `$file->access('view', $account)` and returns forbidden if the user cannot view the file. Only if the file's own view access passes does the download proceed. So a private file is protected — a user cannot download a file they could not otherwise view by guessing its id, because the file's access is enforced. That is the correct design for a file-serving route (the shape that is often an IDOR when the file's access is skipped). Configure the per-option permissions to match who should download, and the file-access layer does the rest.

---

- Expose download options for a file.
- Offer multiple download formats.
- Add a download link per option.
- Serve files through a plugin.
- Enforce file view access on download.
- Protect private files from IDOR.
- Require a per-option permission.
- Restrict file extensions.
- Serve the original file.
- Add a converted-format download.
- Rely on file access being checked.
- Configure per-option permissions.
- Offer a watermarked download.
- Serve managed files safely.
- Verify private files are protected.
- Base downloads on file access.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.