<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Webform DropzoneJS adds a DropzoneJS-backed upload element to Webform, giving drag-and-drop, previews and progress in place of the plain file input.

---

Forms that collect files are forms where the upload is the hardest part for the submitter. A job application with a CV, a grant submission with supporting documents, a claim with photographs, a competition entry with artwork — each involves files that are large, several, or both, on connections that are worse than the developer's. Drupal's stock widget is an `<input type="file">` and a page submit: no progress, no preview, no indication that anything is happening during a two-minute upload, and no recovery when it fails at ninety percent. DropzoneJS supplies the interface half of that. Version **1.1.0** on `^9 || ^10 || ^11`, requiring `webform` and **`dropzonejs`** — the latter is a hard dependency and is not pulled in automatically by the project's composer metadata, so enabling this without installing `dropzonejs` first fails with a missing-dependency error. Three things belong in any conversation about a nicer uploader, and they are all about the server rather than the browser. **Client-side validation is a convenience**: extension, size and count limits shown in the browser must be enforced again on submission, because a decoupled uploader posts what it chooses. **The endpoint must check the caller may write to that field**, not merely that they are logged in — a chunked or AJAX upload endpoint gated only on being authenticated is a recurring finding in this campaign. And **abandoned uploads need collecting**, or a public form becomes unauthenticated disk consumption.

---

- Add drag-and-drop upload to a form.
- Collect a CV on an application form.
- Upload supporting documents to a grant form.
- Show upload progress to submitters.
- Accept photographs on a claim form.
- Upload artwork for a competition.
- Improve upload on a slow connection.
- Preview an image before submitting.
- Upload several files at once.
- Reduce failed uploads on mobile.
- Accept large files on a webform.
- Improve a job application form.
- Collect evidence files.
- Upload a portfolio to a form.
- Reduce support requests about uploads.
- Accept documents on a tender form.
- Improve a report-a-problem form.
- Upload scans to a public form.
