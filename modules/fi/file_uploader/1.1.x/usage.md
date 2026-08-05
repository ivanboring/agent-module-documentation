<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
File Uploader is a JavaScript upload framework for Drupal — a render element, a plugin type and an XHR endpoint that other modules build richer upload experiences on, rather than a finished widget.

---

Drupal's managed file element does a full form submit per upload, which is adequate for one attachment and poor for a drag-and-drop area handling twenty files with per-file progress. Building that means an XHR endpoint, a client, and the validation and access checks that make it safe — work that is easy to get wrong and gets rewritten per project. This module supplies the framework: `src/Element` provides the render element, `src/Plugin` the uploader plugin type, `templates/file-uploader.html.twig` the markup, `public/js` the client, and `file_uploader.api.php` documents the contract. The endpoint is the part worth reading, because it is done correctly: `/file-uploader/upload` carries **both** a `_custom_access` callback (`FileUploaderController::access`) **and** `_csrf_token: "TRUE"` — an upload endpoint needs a real access decision rather than a flat permission, and a state-changing XHR needs the token. Requirements are core only, with a range of `^9 || ^10 || ^11`. As with any upload path, what may be uploaded is still governed by the field's validators — pair it with `file_mime_validator` and `svg_upload_sanitizer` (waves 59 and 60) where uploads are untrusted.

---

- Build a drag-and-drop upload area.
- Upload files over XHR with progress.
- Give editors multi-file upload.
- Replace a full form submit per file.
- Build a custom media upload experience.
- Provide an upload element to a custom module.
- Add per-file progress indicators.
- Write an uploader plugin.
- Upload large files without a page reload.
- Improve upload UX on mobile.
- Handle many attachments at once.
- Integrate uploads into a custom form.
- Reuse one upload framework across modules.
- Theme the uploader with a Twig template.
- Add client-side validation before upload.
- Support a bespoke asset workflow.
- Reduce upload abandonment.
- Build a chunked upload on top of the API.
