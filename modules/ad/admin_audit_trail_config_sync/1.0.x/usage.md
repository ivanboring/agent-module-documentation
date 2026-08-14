<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Admin Audit Trail Config Sync records configuration-synchronization events performed from the command line into the Admin Audit Trail log.
---
Admin Audit Trail skips its own logging for CLI requests because it depends on the current request being a web request, so `drush config:import` runs leave no audit entry. This module subscribes to core's configuration-import event and writes an audit-trail entry directly to the database, so config-sync operations are captured whether triggered through the web UI or Drush.

There is no configuration UI or permission of its own. Once enabled it registers a "Config Sync" event type in the Admin Audit Trail overview and logs an `import_success` entry on each completed import, including a summary of creates/updates/deletes and, when available, the SSH user that triggered the import. It reads no request data and exposes no routes, so there is no additional attack surface beyond the parent module.
---
- Capture `drush config:import` runs in the Admin Audit Trail log.
- Record configuration changes deployed via CI/CD that never touch the web UI.
- See a per-import summary of created, updated, and deleted config items.
- Attribute a config import to the SSH user that ran it, when available.
- Fill the audit gap where core Admin Audit Trail skips CLI requests.
- Add a "Config Sync" event type to the audit overview filters.
- Review who deployed configuration and when, for compliance.
- Correlate config drift with a specific deployment.
- Keep an immutable-ish record of config imports in the database.
- Enable alongside Admin Audit Trail with zero configuration.
- Audit config sync in multi-environment promotion workflows.
- Track config imports triggered by automated release pipelines.
- Distinguish CLI-driven config changes from UI edits in one log.
- Provide evidence of change control for auditors.
- Confirm a scheduled deployment's config import actually completed.
