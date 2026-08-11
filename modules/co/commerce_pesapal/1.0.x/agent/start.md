<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Pesapal Payments — agent index

**Pesapal off-site gateway** with server-side IPN status re-fetch. Version **1.0.0-beta1**. Core `^10||^11`.

IPN handler re-fetches status from Pesapal's API (OAuth-signed), fulfils only on re-fetched `COMPLETED`, uses server-side amount, dedups by remote id — forged IPNs rejected (security positive). Depends on Commerce `commerce_payment`, `commerce_order`, `commerce_price`.