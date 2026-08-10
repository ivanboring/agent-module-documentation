<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Accessible File Manager — agent index

A **file inventory/usage manager with download-count tracking + a private-directory `.htaccess` security guard**.
Depends on core `file`, `field`, `media`, `views`, `token`, `views_bulk_operations`. Provides permissions.
Version **1.1.0**. Core `^10||^11`.

Media/admin — **properly gated** (every route permission-gated) + a **PrivateHtaccessSecurityGuard** for
`private://`. Grant perms to trusted admins; no unauthenticated surface.
