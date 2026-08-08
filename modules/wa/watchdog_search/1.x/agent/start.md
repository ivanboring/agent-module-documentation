<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Watchdog Search (watchdog_search) — agent index

Adds a **text search field to the dblog** (Recent log messages) report. Version **1.0.0-beta2**.
Admin diagnostic, gated by the log-report access. **Logs can contain sensitive data** (credentials/
tokens/PII) — keep the dblog permission restricted.