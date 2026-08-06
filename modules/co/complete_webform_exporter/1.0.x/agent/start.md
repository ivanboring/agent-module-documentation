<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Complete Webform Exporter (complete_webform_exporter) — agent index

ZIPs a webform submission's spreadsheet **plus its attached files**; per-submission route and a
Views bulk action. Version **1.0.9**. Core `^10.1 || ^11`. Depends on `webform:webform`.

Route: `/admin/structure/webform/manage/{webform_id}/submission/{submission_id}/files_download`,
`_permission: 'download any webform submission managed files'` (**`restrict access: TRUE`**).

Classes: `Service/ExporterService`, `Controller/CompleteWebFormExporterController`,
`Plugin/Action/WebformSubmissionsExporterAction`, `Hook/CompleteWebformExporterHooks`.

**Two things to raise.**

1. **No webform/submission pairing check and no entity access** (read from source, not executed).
   `downloadDownload()` loads both entities independently, checks existence, and proceeds — so any
   submission id works through any webform's URL, and Webform's per-form `view_any` / `view_own`
   access is bypassed. `private://` uploads are read server-side, so `hook_file_download` is
   bypassed too. There is no narrower permission, so the feature cannot be delegated per team.
2. **Concrete type hints break it on decorated services (verified).**
   `ExporterService::__construct()` takes `FileUrlGenerator` and `StreamWrapperManager`, not their
   interfaces. With `lupus_decoupled_ce_api` installed (its `FileUrlGenerator` *implements* the
   interface rather than extending the class) the route returns **500** with
   `TypeError: … Argument #3 ($fileUrlGenerator) must be of type Drupal\Core\File\FileUrlGenerator`.
   One-word fix on each argument.