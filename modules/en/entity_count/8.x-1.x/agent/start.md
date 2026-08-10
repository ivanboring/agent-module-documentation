<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity Count — agent index

Builds an admin **report of the number of entities per type/bundle** (census under `/admin/reports/`). Provides
`access entity count`. Version **8.x-1.x** (dev). Core `^9||^10||^11`.

Admin/reporting — counts use **`accessCheck(FALSE)`** so totals **include inaccessible entities** (minor
info-disclosure — but **aggregate counts only**, no rows; permission-gated). Gate to trusted admins.
