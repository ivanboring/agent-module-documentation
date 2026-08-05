<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# File Uploader by Uppy (file_uploader_uppy) — agent index

Binds the **Uppy** JavaScript uploader to the `file_uploader` module — drag-and-drop, progress,
previews, and **chunked resumable uploads**. Requires `file_uploader` (which supplies the server
side). Version **1.1.0**. Core requirement `^9 || ^10 || ^11`.

**Why chunking matters, beyond polish:** a dropped connection **resumes** rather than restarting,
and a file larger than PHP's `upload_max_filesize` can arrive in pieces.

**The security questions belong to the server side — `file_uploader`, not this module — and
chunked-upload endpoints are a recurring source of trouble. Ask:**
1. Does the endpoint enforce the **field's own** validators (extension, size, cardinality), or only
   site-wide ones?
2. Does it check the caller may **write to the target field**, or merely that they are logged in?
   (`file_resup`, recorded in this campaign, fails exactly here.)
3. Are **abandoned partial uploads** ever collected? No GC means unauthenticated disk consumption.

`file_uploader` was reviewed earlier in this campaign and its access handling held — that review is
the starting point, not a guarantee that it applies unchanged to a different front end.
