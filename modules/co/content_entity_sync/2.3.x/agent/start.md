<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Content Entity Sync — agent index

**Drush commands to synchronize content entities** between environments (fills the gap config sync
leaves — config syncs, content doesn't). Depends on core `field`. Provides **Drush commands**. Version
**2.3.0**. Core `^10||^11`.

CLI-driven (privileged context). A content sync can overwrite entities — run deliberately as part of a
controlled process.
