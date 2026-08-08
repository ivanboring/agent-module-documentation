<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CML API — agent index

**CommerceML (CML / 1C)** API layer — implements the XML exchange protocol for syncing catalog/product/
order data with **1C:Enterprise** (ERP). Provides permissions. Version **8.x-1.30**. Core `^9||^10||^11`.

**Security:** the exchange endpoint authenticates the 1C client — protect credentials, serve over HTTPS,
restrict the exchange permission. E-commerce data-exchange (use with `cmlmigrations`).
