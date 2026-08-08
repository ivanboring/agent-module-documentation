<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Amazon PAAPI5 — agent index

Integrates the **Amazon Product Advertising API v5** (fetch product data/pricing/images/affiliate links).
`amazon_pa_filter`/`asin` submodules. Config at `amazon_pa.admin_settings`; provides permissions. Version
**3.0.1**. Core `^9||^10||^11`.

**Security:** store the Amazon **access/secret keys** as **secrets** (not exported config); HTTPS; respect
PA-API terms/limits; escape fetched product content. No access role beyond permission.
