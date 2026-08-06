<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Complete Webform Exporter packages a webform submission as a ZIP containing a spreadsheet of its values **and the files attached to it**, from a per-submission route or as a Views bulk action.

---

Webform's own exporters produce the submission data; the attachments are a separate problem, and on forms that collect documents — applications, claims, tenders, HR intake — the attachments are usually the point. This module closes that gap: `ExporterService` builds the spreadsheet, collects the file ids and signature paths referenced by the submission, and zips everything together. A `WebformSubmissionsExporterAction` gives the same thing in bulk from a Views listing.

Two things to weigh before enabling it.

**The route does not check that the submission belongs to the webform in the URL, and applies no entity access.** `downloadDownload()` loads `Webform::load($webform_id)` and `WebformSubmission::load($submission_id)` independently, checks only that both exist, and proceeds. Webform's per-form `view_any` / `view_own` submission access is bypassed entirely, replaced by one site-wide permission. That permission is `restrict access: TRUE` and its description is honest — *"Allows downloading **any** submissions managed files"* — but there is no narrower option, so the feature cannot be delegated to a team without giving them every submission on the site, attachments included. If uploads live in `private://`, the server-side zipping also bypasses core's file-download access hooks. (Read from source; the route could not be exercised here because of the next point.)

**The service type-hints concrete classes rather than interfaces**, and that breaks it outright on some sites. `ExporterService::__construct()` takes `FileUrlGenerator` and `StreamWrapperManager` — the implementations, not `FileUrlGeneratorInterface` / `StreamWrapperManagerInterface`. `file_url_generator` is a service decoupled and CDN modules routinely replace. **Verified:** with `lupus_decoupled_ce_api` installed, which provides its own `FileUrlGenerator implements FileUrlGeneratorInterface`, the route returns HTTP 500 with a `TypeError` and the feature is dead.

---

- Download a submission's data and attachments as one ZIP.
- Export application forms complete with uploaded documents.
- Give a reviewer everything a claimant submitted in one file.
- Bulk-export selected submissions from a Views listing.
- Include signature images in the export.
- Produce a spreadsheet of a submission's values.
- Hand a complete submission to an external reviewer.
- Archive submissions with their attachments.
- Export tender responses with their documents.
- Move submissions out of Drupal for offline processing.
- Satisfy a records request with the original uploads.
- Restrict submission export to trusted staff.
- Check whether the site replaces `file_url_generator` before relying on it.
- Audit who holds the export permission.
- Decide whether site-wide submission access is acceptable.