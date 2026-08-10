<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Bunny Optimizer — agent index

Renders **Drupal images through Bunny Optimizer** (Bunny.net CDN image optimization — served from the edge).
Requires PHP 7.4. Depends on core `file`, `image`, `file_mdm`. Version **1.1.3**. Core `^9.3||^10||^11`.

Performance/media/CDN — images served via **Bunny.net** (third-party; credentials as secrets, HTTPS); CDN
delivery adds no access control (as public as the source). No access role.
