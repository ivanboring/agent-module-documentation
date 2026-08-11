<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
CDNetworks Purge adds a CDNetworks purger to the Drupal Purge pipeline.

---

CDNetworks Purge provides a purger for the Drupal Purge module that invalidates cached content on the CDNetworks CDN when Drupal signals cache invalidation (tags/URLs). This keeps CDN-cached pages fresh after content changes without manual purging.

CDNetworks API credentials are stored via the Key module (a dependency) and should be env-backed. Permissions cover configuration (`administer cdnetworks_purge configuration`) and manual purges (`perform cdnetworks_purge manual purge`) — restrict both to trusted roles. Depends on `key` and `purge`; supports Drupal 10 and 11.

---

- Purge CDNetworks CDN cache.
- Integrate with the Purge module.
- Invalidate on cache tags/URLs.
- Keep CDN pages fresh.
- Avoid manual purging.
- Store credentials via the Key module.
- Back credentials with environment variables.
- Gate config with a dedicated permission.
- Gate manual purge with a dedicated permission.
- Restrict both permissions to trusted roles.
- Depend on `key` and `purge`.
- Support Drupal 10 and 11.
- Respond to Drupal invalidations.
- Add a purger plugin.
- Configure the CDNetworks connection.
- Support automatic purging.
- Keep API secrets env-backed.
- Manage CDN cache lifecycle.
