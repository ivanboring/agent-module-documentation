<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Acquia Flush Varnish purges Acquia Varnish and associated CDN cache from the Drupal admin side.

---

Acquia Flush Varnish lets administrators purge the Acquia platform's Varnish and associated CDN cache
from within Drupal's admin — so cached pages can be cleared on the Acquia edge without leaving Drupal. It
provides its own permissions.

Use it on Acquia-hosted sites to flush the edge/CDN cache. It is an administration/performance feature that
triggers a cache purge; purging is a privileged operation (and hits the platform's cache), so it is gated by
its permission — grant it only to trusted administrators. It has no content-access role beyond its
permission. Configure and trigger the flush.

---

- Purge Acquia Varnish/CDN cache.
- Flush the edge cache from Drupal.
- Clear cached pages on Acquia.
- Provide its own permissions.
- Gate purging by permission.
- Grant only to trusted admins.
- Have no content-access role beyond permission.
- Trigger the flush.
- Clear the CDN cache.
- Purge from the admin.
- Handle edge purging.
- Flush Varnish.
- Configure the flush.
- Purge caches.
- Clear edge cache.
- Handle cache purging.
- Flush CDN.
- Purge Acquia cache.
- Restrict purging.
- Clear Acquia cache.
