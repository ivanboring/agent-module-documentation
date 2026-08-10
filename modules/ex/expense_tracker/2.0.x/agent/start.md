<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Expense Tracker — agent index

An **expense/income tracker** (entries, categories, views/reports, REST API, bulk ops). Depends on core `views`,
`comment`, `path`, `rest`, `serialization`, `basic_auth`, `views_bulk_operations`. Provides permissions. Version
**2.0.0**. Core `^10||^11`.

Content/finance — entries are **personal/sensitive financial data**: restrict via permissions/core access,
permission-gate the **REST API** (Basic Auth over HTTPS). No broad access role beyond permission.
