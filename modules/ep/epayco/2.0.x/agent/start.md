<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# ePayco — agent index

**ePayco payment integration** (Commerce gateway `commerce_epayco` + `epayco_api` + business rules). Provides
permissions. Version **2.x** (dev). Core `^8.7.7||^9||^10||^11`.

Trust boundary **correct** (verified): confirmation **fetches the transaction status from ePayco's API**
(`getTransactionRemoteData` → `x_cod_response == 1`), not a client return; outbound request is **signed**. A
forged return can't complete an order. Store **API keys** as secrets; HTTPS. No access role beyond
permission.
