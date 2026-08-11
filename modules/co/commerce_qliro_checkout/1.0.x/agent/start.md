<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Qliro Checkout — agent index

**Qliro Checkout** off-site gateway for Commerce. Version **1.0.3**. Core `^10||^11`.

`/validate/{gateway}` callback is anonymous but `onValidation()` is a no-op stub; completion goes through Qliro's server-side Merchant API. Store API credentials env-backed. Depends on Commerce `commerce_payment`.