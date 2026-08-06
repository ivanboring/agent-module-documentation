<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
File Temporary Validator checks for duplication among temporary files during upload validation.

---

Drupal creates a temporary file entity for every upload and deletes the unused ones on cron. On a busy site with large uploads, or where a form is abandoned and retried, the same content gets uploaded repeatedly and each attempt leaves its own temporary file — storage consumed by content the site already has, several times over.

This module adds duplication checking to that path, so the situation is detected rather than silently accumulating.

**Two things worth being clear about.** Duplicate detection means computing something over file content — a hash — and on large files that is real work during an upload, which is a request a user is waiting on. Know what the cost is before enabling it on a site accepting video or large documents.

And **files that look identical are not always interchangeable.** Two users uploading the same PDF have each uploaded their own copy for their own purpose, and deduplicating at the wrong layer can produce surprising ownership and access outcomes — one user's deletion removing another's attachment, or a private file shared by reference. Deduplicating *temporary* files, which is what this does, avoids most of that, but it is the question to ask of any deduplication feature.

Release is **1.0.0-beta4**.

---

- Detect duplicate temporary files.
- Reduce storage from repeated uploads.
- Handle an abandoned and retried form.
- Add duplication checking to upload validation.
- Know the hashing cost on large files.
- Assess impact on video uploads.
- Avoid deduplicating across owners.
- Understand access implications of shared files.
- Keep deduplication to temporary files.
- Audit temporary file accumulation.
- Check cron is cleaning temporary files.
- Plan storage for an upload-heavy site.
- Evaluate a beta before production use.
- Investigate unexpected storage growth.
- Document this module's behaviour for the team.
- Review it during a site audit.
- Verify its assumptions after an upgrade.
