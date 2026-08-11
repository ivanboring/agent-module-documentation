<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# BeGateway Payment — agent index

**Drupal Commerce BeGateway gateway** (off-site redirect). Version **8.x-1.6**. Core `^9||^10||^11`.

Positive: `onNotify` checks `$webhook->isAuthorized()` (SDK credential verify) + amount compare before completing. Credentials env-backed. Depends on `commerce_payment`, `token`.