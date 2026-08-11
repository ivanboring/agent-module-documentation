<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Link File Browser adds a file-explorer button to the link field widget.

---

Link File Browser **adds a file-explorer button to the link field widget** — letting editors browse a
configured folder (meant to be under `public://`) and pick a file/folder to insert into a link field, with a modal
file explorer. It provides its own permissions, in the Field types package.

Use it to pick files for link fields. It is a content-editing/file feature with a **security caveat you must be
aware of**: its file-listing endpoint (`ajax/list-files`, permission `view link file browser`) builds the
directory to list from **client-supplied request parameters** (`directory` and `root`) with only a `//`→`/`
normalization and **no `../` traversal protection**, then `scandir()`s it recursively and returns file/dir names
and full paths as JSON. As a result, a user who holds `view link file browser` (an editor-level permission granted
to use this very widget) can supply `directory=../../../..` and **enumerate arbitrary server directories** —
disclosing the filesystem layout and non-`.php` filenames well beyond the intended `public://` folder (this is an
authenticated path-traversal / directory-listing issue, recorded as a campaign security finding). Until fixed
(confine the resolved path to an allowed base with `realpath()` + `str_starts_with`), **grant `view link file
browser` only to trusted users**, and be aware the browsing is not confined. Configure the widget's allowed
folder.

---

- Add a file-explorer to the link widget.
- Browse a configured (public://) folder.
- Pick a file/folder into a link field.
- Provide its own permissions.
- Serve content editing/file picking.
- Show a modal file explorer.
- BUILD the listed path from CLIENT-supplied 'directory'/'root' with no ../ protection (SECURITY).
- Let a 'view link file browser' user traverse + enumerate arbitrary server directories (info disclosure).
- Return file/dir names + full paths as JSON (recursive).
- GRANT 'view link file browser' only to trusted users until fixed.
- Need confinement to an allowed base (realpath() + str_starts_with).
- Configure the widget's allowed folder.
- Handle link file browsing.
- Browse files.
- Configure the folder.
- Pick files.
- Handle the widget.
- List files.
- Restrict the permission.
- Provide a link file browser.
