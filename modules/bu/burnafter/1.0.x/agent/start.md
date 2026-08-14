<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# BurnAfter (`burnafter`) — agent index
**Self-destructing (burn-after-reading) entities, viewed at a UUID URL, with optional at-rest encryption.**

- **Version:** 1.0.x  | **Core:** ^10  | Runtime dep: contrib `encrypt` (undeclared in info.yml; wired in services)
- **Configure:** `/admin/config/system/burnafter` (`burnafter.settings`, perm `administer burnafter settings`)
- **Create:** `/burnafter/add` (perm `create burnafter entity`). **View:** `/burnafter/{uuid}` (perm `view burnafter entity`, entity access handler, `no_cache: TRUE`).
- View → decrypt (if enabled) → increment `view_count` → save. Cleanup via `BurnAfterService::deleteExpired()` on **cron**.

**Security review:** access requires both the `view burnafter entity` permission AND knowledge of a random UUID (capability URL); content is rendered `#plain_text` (no XSS); optional Encrypt-module encryption at rest. **Design note (D1):** deletion of over-viewed/expired entities happens on cron, not immediately at the burning view — so a "burn after 1 view" secret remains retrievable (by someone with the permission + UUID) until the next cron run. Not a high-severity finding, but the burn is not atomic. No unauth exposure.
