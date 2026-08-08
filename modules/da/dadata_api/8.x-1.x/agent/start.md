<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# DaData API — agent index

Integrates the **DaData API** for suggestions/enrichment (addresses, companies, banks). Config at
`dadata_api.settings`; provides permissions. Version **8.x-1.3**. Core `^8.8||^9||^10||^11`.

**Security:** store the DaData API token as a secret; values users type are sent to DaData (data-handling/
privacy consideration).
