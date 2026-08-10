<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Wise — agent index

**Wise (TransferWise) off-site payment gateway** for Drupal Commerce. Depends on `commerce_payment`,
`commerce_order`. Version **1.0.0**. Core `^10||^11`.

Payment gateway — **positive**: `onNotify()` **verifies the webhook signature first** — `openssl_verify` of
`X-Signature-SHA256` against **Wise's public key** (RSA-SHA256); invalid/unsigned notifications are rejected before
any order is touched. Configure Wise's public key; store the API token as a secret (env/Key), HTTPS. (Minor: verify
helper uses a truthy check, not `=== 1` — not a practical bypass with a fixed valid key.)
