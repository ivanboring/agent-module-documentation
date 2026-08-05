<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Events Logger (elogger) — agent index

Records system events as **`elog` entities with diffs**. Depends on core `token`, `views` plus
contrib `views_data_export`, `views_bulk_operations` and **`diff`**.
Core requirement `^9 || ^10 || ^11`.
Settings `/admin/structure/elog`; entities under `/admin/reports/elogger/elog/{elog}`.

Key facts:
- **The `diff` dependency is the point.** Watchdog records *that* something happened; storing a
  diff records *what changed*, which is the question an audit asks. The other dependencies are
  consumption: Views to browse, `views_data_export` for an auditor-readable export,
  `views_bulk_operations` to act in bulk.
- Granular permissions: `administer event log entity`, `view event log entity`,
  `delete event log entity`, `administer elogger configurations`.
- **Two standing considerations for any audit log, sharper here because diffs are stored:**
  1. *Growth and retention.* Diffs are large; the table grows fast and nothing prunes it by
     default.
  2. *The log inherits the sensitivity of what it logs.* An audit trail of personal data **is**
     personal data — it needs the same lawful basis and retention treatment as the content.
  3. Related: whoever holds `delete event log entity` can remove the evidence. Check that grant
     when the trail is relied on for compliance (same point as `user_history`, wave 65).
- Ships a `jsonpanel` directory for rendering structured data in the UI.
