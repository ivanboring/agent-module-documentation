<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
PDFa11y checks uploaded PDFs for accessibility compliance and reports the results against the media item, so the accessibility of documents is visible in Drupal rather than discovered by a reader with a screen reader.

---

Accessibility work usually stops at the HTML boundary: a site can pass WCAG audits while its published PDFs have no tag structure, no document language, no title and unlabelled images — and PDFs are frequently the documents that matter most, being the forms, policies and reports people actually need. This module extends the checking inward. It parses uploaded PDFs with `smalot/pdfparser ^2.0` — locally, with no external service involved — and evaluates configurable checks, storing results for display against the media entity; `css/report.css` and `css/modal-scroll.css` style the report and its modal. Permissions are split three ways and the split is sensible: `administer pdf accessibility` (marked `restrict access: true`) for which checks run, `run pdf accessibility checks` for triggering them manually, and `view pdf accessibility reports` for seeing the results — so an editor can be given visibility and the ability to re-check without being able to weaken the ruleset. There is also a help route with its own `view pdf accessibility help` permission, serving guidance on producing accessible PDFs. Requirements are PHP 8.1+, core `^10.2 || ^11`, and core `media` and `file`.

---

- Check an uploaded PDF for accessibility problems.
- Find PDFs missing a document title or language.
- Report on document accessibility inside Drupal.
- Give editors feedback before publishing a PDF.
- Support a public-sector accessibility obligation.
- Audit an existing library of documents.
- Re-run checks after a document is replaced.
- Show accessibility status on the media item.
- Let editors see reports without changing rules.
- Restrict which checks are enabled to administrators.
- Provide guidance on creating accessible PDFs.
- Keep PDF checking local rather than sending files away.
- Prioritise which documents to remediate.
- Evidence an accessibility statement.
- Catch untagged PDFs at upload.
- Track document accessibility over time.
- Complement HTML accessibility tooling.
- Train editors on document accessibility.
