<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Custom Event Logger (cevlogger) — agent index

**Standalone DB logger**: `cevlogger.logger` service writes structured rows to a dedicated `cevlogger_logs` table; viewed in a paginated admin report. Independent of core dblog and does not capture watchdog automatically.

**Version:** 1.0.x (1.0.0-alpha1). Core: `^10 || ^11 || ^12`.

Service: `cevlogger.logger` → `CevLogger::log($module_name, $type, $message)`. Table `cevlogger_logs` (id, module_name, timestamp, log_type, log_message; indexes on module_name/timestamp/log_type) created in `hook_schema`, dropped on uninstall. Route `cevlogger.content` at `/admin/reports/cevlogger` (`CevLoggerView::viewLogs`, 50/page). No own permissions file.

**Security:** the only route is the admin report, gated by `administer site configuration`. No mutating or anonymous endpoints; logging is code-initiated only. No security findings.