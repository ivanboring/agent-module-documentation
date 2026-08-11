<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Fondy Commerce Payment Gateway — agent index

**Drupal Commerce Fondy gateway** (off-site). Version **8.x-1.5**. Core `^9||^10||^11`.

Positive: `isPaymentValid()` verifies signature + amount and uses server-side order total (no completion on invalid sig/amount). Credentials env-backed. Depends on `commerce_payment`, `commerce`.