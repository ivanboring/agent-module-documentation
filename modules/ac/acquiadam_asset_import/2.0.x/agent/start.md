<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Acquia DAM Asset Importer — agent index

**Bulk-imports assets from Acquia DAM (Widen) into Drupal media** (builds on Media: Acquia DAM). Depends on
`media_acquiadam`, `token`, `views_remote_data`. Version **2.0.0-beta2**. Core `^10.1||^11`.

Media/integration — DAM **credentials configured in media_acquiadam** (secrets); fetches assets from **Acquia
DAM** (egress, HTTPS); imported media follows core media/file access. No access role.
