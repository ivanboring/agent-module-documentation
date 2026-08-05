<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# File Uploader (file_uploader) — agent index

JavaScript upload **framework** — render element, plugin type and XHR endpoint for other modules
to build on. Core-only dependencies. Core requirement `^9 || ^10 || ^11`.

Key facts:
- **The endpoint is correctly gated** — worth noting as a positive example:

  ```yaml
  file_uploader.xhr:
    path: "/file-uploader/upload"
    requirements:
      _custom_access: Drupal\file_uploader\Controller\FileUploaderController::access
      _csrf_token: "TRUE"
  ```

  A real access callback (not a flat permission) plus a **CSRF token** on a state-changing XHR.
  Compare `views_kanban` (wave 60), which had neither.
- Surface: `src/Element/`, `src/Plugin/` (uploader plugin type), `src/Controller/`,
  `templates/file-uploader.html.twig`, `public/js/`, `file_uploader.api.php`.
- **It is a framework, not a finished widget.** Enabling it alone gives you an element to use, not
  a new upload experience.
- **What may be uploaded is still the field's business.** Pair with `file_mime_validator`
  (wave 59) and `svg_upload_sanitizer` (wave 60) where uploads come from untrusted users — an
  upload framework does not make the payload safe.
