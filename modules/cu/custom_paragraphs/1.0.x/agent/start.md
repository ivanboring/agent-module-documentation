<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Custom Paragraphs (custom_paragraphs) — agent index

**Repeatable custom paragraph field-group library with an AJAX file-upload widget.**

- **Version:** 1.0.x  **Core:** ^10 || ^11
- **Routes (POST, `_permission: "access content"`):** `/custom-paragraphs/repeatable-file-upload` (`::upload`) and `/custom-paragraphs/repeatable-file-restore` (`::restore`) — `src/Controller/RepeatableFileUploadController.php`.
- **Behavior:** upload saves each file as a permanent managed `file`, returns JSON (fid/filename/uri/url); restore loads files by fid.
- **Security (report):** upload endpoint is gated only by `access content` (anonymous by default) yet: (1) destination dir comes from client `upload_location` (`RepeatableFileUploadController.php:57,84,108`) — attacker-chosen write location; (2) file-type validation runs **only when** the client sends a non-empty `accept` (`:101`) — omitting it disables extension/MIME checks, allowing arbitrary file types incl. executable; (3) filename is client `getClientOriginalName()` used in the path (`:97,108`); (4) `restore` returns metadata/URL for any managed file id (`:162`, IDOR). Effectively near-unauthenticated arbitrary file upload — see report.
