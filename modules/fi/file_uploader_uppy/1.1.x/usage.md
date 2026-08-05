<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
File Uploader by Uppy plugs the Uppy JavaScript uploader into the `file_uploader` module, replacing the plain file input with drag-and-drop, progress, previews and resumable transfers.

---

Drupal's stock file widget is an `<input type="file">` and a page submit, and the gap between that and what people expect from any modern application is wide: no drag target, no progress indication, no preview, no recovery when a large upload fails at ninety percent on a hotel wifi. Uppy is the widely used open-source answer, and it brings the piece that matters most for large files — **chunked, resumable uploads**, so a dropped connection resumes rather than restarting, and a file larger than PHP's `upload_max_filesize` can arrive in pieces. This module is the Drupal binding, depending on `file_uploader` which supplies the server side; version **1.1.0** on `^9 || ^10 || ^11`. The security questions belong to the server side and are worth stating because chunked upload endpoints are a recurring source of trouble: whether the endpoint enforces the **field's own** validators (extension, size, count) rather than only the site-wide ones, whether it checks the caller may write to the target field at all rather than merely being logged in, and whether abandoned partial uploads are ever collected — the campaign has recorded exactly those failures in other chunked-upload modules. The `file_uploader` parent was reviewed earlier in this campaign and its access handling held; that review is the right starting point rather than assuming it applies unchanged to a different front end.

---

- Add drag-and-drop file uploads.
- Show upload progress to editors.
- Resume an interrupted upload.
- Upload files larger than the PHP limit.
- Preview an image before saving.
- Upload several files at once.
- Improve the media upload experience.
- Reduce failed large-file uploads.
- Support uploads on unreliable connections.
- Give editors a modern uploader.
- Upload video files reliably.
- Show a queue of pending uploads.
- Cancel an upload in progress.
- Reduce support requests about uploads.
- Upload from a mobile device.
- Support a document library workflow.
- Replace the stock file widget.
- Handle a batch of photographs.
