<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Coinbase — agent index

**Coinbase Commerce crypto gateway** with signed webhook. Version **2.0.2**. Core `^9||^10||^11`.

Webhook `/coinbase/webhook/{gateway}` is anonymous but **HMAC-verified** (rejects forgeries — positive). Nit: `!=` compare is non-constant-time (should be `hash_equals()`) — Danger 1, see local security.md. Depends on Commerce `commerce`, `commerce_payment`.