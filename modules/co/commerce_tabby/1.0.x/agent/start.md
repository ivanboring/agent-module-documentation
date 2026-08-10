<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Tabby — agent index

**Tabby Payments (BNPL) gateway** for Drupal Commerce. Depends on `commerce_payment`. Version **1.0.0-beta5**.
Core `^11.1`.

Payment gateway — **positive**: the webhook `onNotify()` reads only the payment `id` and **re-fetches the payment
from Tabby's API server-side** (`GET v2/payments/{id}`); status comes from the **authenticated API response**
(CLOSED/AUTHORIZED), not the webhook body — a forged webhook can't mark an order paid. Store API keys as secrets
(env/Key), HTTPS.
