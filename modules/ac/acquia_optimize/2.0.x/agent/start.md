<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Acquia Web Governance (acquia_optimize) — agent index

Acquia governance platform integration — SEO, accessibility, readability and policy scanning, with
results surfaced inside Drupal. Configure at `acquia_optimize.admin_settings`.
Version **2.0.0**. Core `^10.3 || ^11`. No module dependencies.

Permissions: `scan acquia optimize` (**`restrict access: true`** — scans cost vendor quota),
`administer acquia optimize`.

Classes: `ApiClient` + `ApiClientFactory`, `Controller/AcquiaOptimizeController`,
`Controller/ContentQuickScanController`, `Controller/AcquiaOptimizePreviewController`,
`Form/SettingsForm`, `Form/AcquiaOptimizeFormAlter` (puts findings on the node form).

**Credential note.** `api_key` lives in `acquia_optimize.settings`. The form masks it and
preserves the stored value when a masked value is resubmitted — careful UI, but masking is not
storage: the key is still in config, so it is in config exports, the repo and database dumps. No
Key entity support. Prefer an environment variable plus a `settings.php` config override so the
exported configuration carries nothing secret.