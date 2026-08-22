# Complete Webform Exporter — manual setup guide

**Complete Webform Exporter** (`complete_webform_exporter`) downloads a webform
submission — a spreadsheet of its values **plus every file attached to it** —
packaged together as a single ZIP. You can grab one submission at a time from a
per-submission download link, or select several at once and export them in bulk
from a Views listing.

Webform's own exporters already produce the submission data, but the uploaded
files are a separate problem — and on forms that collect documents
(applications, claims, tenders, HR intake) the attachments are usually the whole
point. This module closes that gap: it builds the spreadsheet, gathers the files
and signature images the submission references, and zips everything into one
download so a reviewer gets the complete picture in a single file.

The module works as soon as you enable it — there is no settings form to fill
in. It depends on the **Webform** module (and Webform's bundled PhpSpreadsheet
library, which produces the spreadsheet). Access is controlled by a single
permission, **Download any webform submission managed files**.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install the module with Composer and
   enable it.

There is **no configuration page** for this module — it has no settings form.
Setup is just installing it and granting the permission.

## Where it lives in the admin menu

Complete Webform Exporter adds no settings page of its own. Instead it adds a
per-submission download route under each webform's submission pages
(`/admin/structure/webform/manage/{webform}/submission/{submission}/files_download`)
and a **bulk export** action you can run from a Views listing of submissions.

## How to use it

1. Grant the **Download any webform submission managed files** permission at
   **People → Permissions** (`/admin/people/permissions`) to the roles that
   should be able to export.
2. Open a submission under **Structure → Webforms → *(your form)* → Results →
   Submissions** and use the download action to get that submission's ZIP.
3. To export several at once, use the bulk **Export webform submissions** action
   on a Views listing of submissions, then download the resulting ZIP.

> **A word on access — read this before granting the permission.** The download
> permission is site-wide: it is a single **Download any webform submission
> managed files** grant with no per-form option, so anyone who holds it can
> export **every** submission on the site, attachments included — the feature
> cannot be delegated to a team for just their own forms. The download route
> also loads the webform and submission independently and does not verify that
> the submission actually belongs to the webform named in the URL, nor does it
> apply Webform's normal per-form "view submissions" access. If your uploads are
> stored in a private filesystem, the server-side zipping reads those files
> directly, bypassing Drupal's usual private-file download checks. Treat the
> permission as "trusted staff only" and audit who holds it.
