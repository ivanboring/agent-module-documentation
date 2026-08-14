<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Custom Paragraphs provides a generic, repeatable custom paragraph field-group library,
including an AJAX-driven "repeatable file upload" widget for adding multiple files to a
paragraph-style field group.

---

Its front-end controller (`RepeatableFileUploadController`) exposes two POST endpoints —
`/custom-paragraphs/repeatable-file-upload` and `/custom-paragraphs/repeatable-file-restore` —
that receive uploaded files (or file ids) over AJAX and return JSON describing the saved
managed files (fid, filename, uri, url). The upload handler takes an `upload_location`,
optional `multiple` flag and an `accept` list from the request, saves each file as a permanent
managed `file` entity, and returns its metadata; the restore handler re-hydrates previously
uploaded files by fid.

Both routes are gated only by the core **"access content"** permission (granted to anonymous
users by default). Note the upload endpoint takes the destination directory (`upload_location`)
and the accepted file types (`accept`) from the client request, and only enforces type rules
when an `accept` value is supplied — review the operational security notes below before exposing
it on a public site. Use the module to build repeatable paragraph groups with attached file
uploads in content-editing forms.

---

- Build repeatable custom paragraph field groups.
- Attach an AJAX repeatable file-upload widget to a field group.
- Upload multiple files to a paragraph group over AJAX.
- Return saved-file metadata (fid/uri/url) as JSON.
- Restore previously uploaded files by fid.
- Restrict a widget to a single file via the multiple flag.
- Constrain accepted types with an accept list.
- Save uploads as permanent managed file entities.
- Reuse a generic paragraph library across content types.
- Add repeatable structured content blocks to forms.
- Let editors add several files to one paragraph group.
- Return uploaded-file URLs to the editing UI over AJAX.
- Rehydrate a form's files after a validation error.
- Cap a widget to a single file when needed.
- Reuse the paragraph library across multiple content types.
