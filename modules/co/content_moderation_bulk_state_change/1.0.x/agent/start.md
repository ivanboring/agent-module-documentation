<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Content Moderation Bulk State Change — agent index

Adds a **bulk action** to change the **content-moderation state** of many entities at once (publish/
archive batches). Settings at `content_moderation_bulk_state_change.settings`. Depends on core
`workflows`, `content_moderation`. Version **1.0.0-alpha1**. Core `^10||^11`.

**Security consideration:** the bulk action must respect moderation permissions and allowed
transitions so users can't reach states they couldn't individually. Provides its own permissions.
