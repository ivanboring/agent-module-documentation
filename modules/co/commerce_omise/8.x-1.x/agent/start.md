<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Omise — agent index

**Drupal Commerce Omise gateway** (Thailand / Japan). Version **8.x-1.x-dev**. Core `^10||^11`.

**SECURITY: onNotify trusts request-body `data.status` — unauthenticated payment-completion forgery (harden by re-fetching the charge server-side before use).** Credentials env-backed. Depends on `commerce_payment`.