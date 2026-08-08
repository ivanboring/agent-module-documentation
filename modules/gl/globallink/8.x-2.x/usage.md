<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
GlobalLink Connect is a TMGMT translator plugin: it sends translation jobs from Drupal to GlobalLink, the translation management platform run by translations.com, and brings the finished translations back.

---

TMGMT provides the Drupal-side workflow — jobs, job items, checkout, review, acceptance — and delegates the actual translation to a translator plugin. This module is the plugin for one commercial vendor. If a site's translation work is already contracted to translations.com, this connects the two; if it is not, this module has nothing to offer.

It requires the vendor's own PHP library, `globallink-connect-api-php`, installed via Composer, in addition to TMGMT and `tmgmt_file`. Vendor credentials are stored as TMGMT translator settings, which is the standard place for them — TMGMT translator entities are configuration, so the usual caution applies: check what a config export contains before committing it, and prefer supplying secrets by environment variable where the deployment allows.

Practical notes for anyone evaluating it: the module carries a `^8.8 || ^9 || ^10 || ^11` core constraint, which is unusually wide and means the codebase has been carried forward rather than rewritten. Job submission maps TMGMT job settings (`due`, `required_by`, `urgent`, `comment`, submitter) onto GlobalLink project fields, so the vendor-side project must be configured to match — that mapping is where most setup problems live.

---

- Send Drupal content to a commercial translation vendor.
- Use translations.com as a TMGMT translator.
- Submit a translation job from TMGMT.
- Retrieve completed translations automatically.
- Map TMGMT job settings to GlobalLink project fields.
- Set a due date on a translation job.
- Mark a translation job urgent.
- Attach a comment to a translation job.
- Route content translation through an existing vendor contract.
- Install the globallink-connect-api-php library via Composer.
- Configure vendor credentials as TMGMT translator settings.
- Check config exports for vendor credentials.
- Keep translation workflow inside TMGMT.
- Review translations before acceptance.
- Pair with tmgmt_file for file-based transfer.
- Confirm the vendor-side project matches the mapping.