<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Order Auto-validation — agent index

Automatically **validates Commerce orders paid in full** (cron finds orders in `validation` with a completed
payment, applies the `validate` transition). Depends on `commerce_order`. Version **2.0.2**. Core
`^9.5||^10||^11`.

**Correctly guarded:** checks `$order->isPaid()` (Commerce's real paid-in-full check) before validating —
does NOT validate unpaid orders. Payment-gated automation.
