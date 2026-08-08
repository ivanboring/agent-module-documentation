<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Acquia Cloud - Backup Manager (acquia_cloud_backup_manager) — agent index

Prunes **on-demand** Acquia Cloud backups by cron via the Cloud API — keep-for-N-days or
keep-newest-N. Version **2.0.0**. Core `^10.2 || ^11`.
Configure at `/admin/config/services/acquia-cloud/backup-manager`
(`administer site configuration`). On ACSF use `acsf_backup_manager` instead.

**Credentials — supply them as environment variables.** `AcquiaCloudClient` reads
`getenv()` first, and when both the token and secret are set the form hides the credential fields
("The fields for API credentials are hidden because are set globally"). That path avoids both
problems below.

**If the form fields are used instead (verified):**

1. Key and secret are written to plain config (schema `type: string`); `drush config:get` returns
   them in clear, so a config export puts them in the sync directory and in git.
2. Both are `'#type' => 'textfield'` with `#default_value` set, so both appear in the settings page
   HTML in clear. Should be `'#type' => 'password'`.

Cloud API credentials control environments, databases, deployments and env vars for the whole
application — not just this site.

Cron deletion is opt-in via `cron_enabled`.