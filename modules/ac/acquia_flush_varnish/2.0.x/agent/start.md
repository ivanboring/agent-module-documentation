<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Acquia Flush Varnish — agent index

Purges **Acquia Varnish + associated CDN cache** from the Drupal admin (clear edge-cached pages without
leaving Drupal). Provides permissions. Version **2.0.4**. Core `^9||^10||^11`.

Admin/performance — cache purge is privileged; gated by its permission, grant only to trusted admins. No
content-access role beyond permission.
