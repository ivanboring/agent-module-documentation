<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Webform DropzoneJS (dropzonejs_webform) — agent index

**DropzoneJS** upload element for Webform — drag-and-drop, previews, progress. Requires `webform`
and **`dropzonejs`**. Version **1.1.0**. Core requirement `^9 || ^10 || ^11`.
Note: the project is `dropzonejs_webform`; the module it ships is **`webform_dropzonejs`**.

**Install note:** `dropzonejs` is a **hard dependency not pulled in automatically** — enabling
without it fails with *"module 'webform_dropzonejs' is missing its dependency module dropzonejs"*.

**Why it matters on forms specifically:** a job application, a grant submission, a claim with
photographs — files that are large, several, or both, on connections worse than the developer's.
Drupal's stock widget offers **no progress, no preview, no sign anything is happening during a
two-minute upload, and no recovery** when it fails at ninety percent.

**Three things belong in any nicer-uploader conversation, and they are all about the server:**
1. **Client-side validation is a convenience.** Extension, size and count limits must be **enforced
   again on submission** — a decoupled uploader posts what it chooses.
2. **The endpoint must check the caller may write to that field**, not merely that they are logged
   in. Upload endpoints gated only on authentication are a recurring finding in this campaign
   (`file_resup`).
3. **Abandoned uploads need collecting**, or a public form becomes unauthenticated disk consumption.
