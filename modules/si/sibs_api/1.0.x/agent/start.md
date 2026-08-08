<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# SIBS API — agent index

Integrates the **SIBS API** (Portuguese/European payment & transaction services). Provides permissions.
Version **1.0.4**. Core `^8.8||^9||^10||^11`.

**Security (financial API):** store SIBS credentials as secrets; uses TLS (checked — no disabled
verification); for payment flows verify outcomes against SIBS's authoritative API, not client
callbacks.
