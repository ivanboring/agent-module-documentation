<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Imoje — agent index

**Drupal Commerce imoje gateway** (Poland). Version **2.0.2**. Core `^10||^11`.

Positive: notify handler verifies the `X-Imoje-Signature` (sha256) before completing (throws on mismatch). Credentials env-backed. Depends on `commerce_payment`.