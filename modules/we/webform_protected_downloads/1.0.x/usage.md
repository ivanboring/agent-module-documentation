<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Webform Protected Downloads gates a file behind a form: the visitor submits a webform and receives a unique download link, which is how whitepapers, price lists and licensed documents are usually exchanged for contact details.

---

The module attaches a handler to a webform; on submission it creates a `WebformProtectedDownloads` entity linking that submission to the configured file, and issues a link at `/webform_protected_file/{hash}/download`. Expiry is supported in minutes, and links can be marked one-time. A `verify_access` setting offers several levels — `basic`, `owner`, `view_submission`, `owner_or_view_submission` and `owner_and_view_submission` — and the higher levels perform real entity access checks (`$submission->isOwner()`, `$submission->access('view')`), which is the right design. What matters before deploying it is that the **default level, `basic`, makes the hash itself the only authentication**, and this campaign established by experiment that the hash is an *unkeyed* SHA-256 of the submission id, the handler id and the submission timestamp — all values an attacker can enumerate or learn. The local security notes give the full transcript. The practical guidance is short: set `verify_access` to one of the owner or view-submission options on every handler, and do not rely on the link being unguessable. Requirements are Webform `^6.2`, core `file` and `token`; the release is 8.x-1.0-alpha3.

---

- Exchange a whitepaper for contact details.
- Gate a price list behind a form.
- Send a download link after a form submission.
- Expire a download link after an hour.
- Issue a one-time download link.
- Require the submitter to be logged in to download.
- Restrict downloads to the person who submitted.
- Track who requested a document.
- Deliver a licensed file to a requester.
- Provide a report after registration.
- Limit access to submission owners.
- Return a generated document to a submitter.
- Combine gating with webform confirmation email.
- Use a token for the link in a message.
- Restrict downloads to users who may view submissions.
- Provide time-limited access to a file.
- Deliver event materials to registrants.
- Capture leads in exchange for content.
