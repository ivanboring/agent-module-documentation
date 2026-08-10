<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
File View Access enables/disables the file view permission for files.

---

File View Access adds a **`file view access` permission** intended to gate viewing of files. It depends on
core File, provides its own permissions, in the Fields package.

**Security warning (danger 2, verified): this module does NOT actually restrict file viewing.** Its access
handler returns `allowedIfHasPermission('file view access')` **only for `public`-scheme files** (and never
returns *forbidden* — the private-file `forbidden` is a commented-out example). Two gaps make the permission
ineffective: (1) **public files are served directly by the web server at their `/sites/.../files/…` URL, which
never consults the file entity access handler** — so anyone with the URL can download a public file regardless
of the permission; and (2) it implements **no `hook_file_download`**, which is the only hook that gates
**private** file downloads — so private files aren't restricted by it either. So enabling this to "require a
permission to view files" gives **false confidence**: public files remain world-readable by URL and private
files aren't gated. To actually restrict files, put them in the **private scheme** and gate downloads via
`hook_file_download`. See the local security.md.

---

- Add a 'file view access' permission.
- KNOW it does NOT actually restrict file viewing.
- Understand public files are served by URL, bypassing the handler.
- Know it implements no hook_file_download (private files ungated).
- Know the handler never returns forbidden.
- Not rely on it to protect files (false confidence).
- Use the private scheme for files that must be restricted.
- Gate private downloads via hook_file_download.
- Depend on core File.
- Provide its own permissions.
- See the security.md for the fix.
- Restrict files properly elsewhere.
- Handle (ineffective) file access.
- Avoid false protection.
- Configure the permission.
- Move sensitive files to private.
- Handle the module.
- Guard files correctly.
- Fix the access control.
- Provide (broken) file access.
