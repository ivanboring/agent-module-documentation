<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Config Batch Export exports site configuration using Drupal's batch API, so very large configuration sets export without hitting PHP time or memory limits.

---

Exporting configuration on a large site can exceed PHP's execution time or memory in a single request. Config Batch Export runs the export through the batch API, chunking the work so it completes reliably regardless of config volume. It is an operational tool for administrators; configuration can contain sensitive settings, so the export is admin-gated and the resulting archive should be handled like any config export — reviewed before committing, kept out of public locations.

---

- Export large config sets reliably.
- Avoid PHP timeouts on export.
- Batch the configuration export.
- Export config on a big site.
- Handle memory limits on export.
- Export without CLI access.
- Review the config archive.
- Restrict export to admins.
- Chunk a large export.
- Keep exports out of public paths.
- Enable when the feature is needed.
- Keep it disabled otherwise.
- Restrict administration to trusted roles.
- Confirm behaviour on your site.
- Test before production.
- Review configuration.
- Pair with related modules.
- Keep the setup minimal.
- Document why it was added.
- Verify it fits your theme.
- Audit access to it.
- Match it to your use case.