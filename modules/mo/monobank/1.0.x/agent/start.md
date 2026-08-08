<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Monobank — agent index

Payments via **Monobank** (Ukrainian acquiring API) — create invoices, accept payments (basket/order
integration). Config at `monobank.settings`; provides permissions. Version **1.0.2**. Core `^9||^10||^11`.

**SECURITY CAVEAT (payment-forgery):** the webhook `/monobank/status` (`_permission: access content`, public)
marks a payment `success` + calls `paymentFinish()` on a posted `status=success` matching invoiceId/amount/
ccy — **without verifying Monobank's `X-Sign` signature**. Those match-values are known to the payer → a
customer can forge success and get fulfilled **without paying**. `payment_result` re-checks via server-side
`getStatus()`, but fulfilment runs in the unverified webhook path. **Don't rely on the webhook** — verify
X-Sign against Monobank's pubkey or confirm via `getStatus()` before fulfilling; HTTPS; token as secret. See
`security.md`.
