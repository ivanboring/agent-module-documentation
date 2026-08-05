<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Events Logger records system events as `elog` entities with a diff of what changed, giving an auditable history that can be browsed, filtered and exported.

---

Drupal's watchdog records that something happened; it does not record *what changed*, which is the question an audit actually asks. This module stores events as entities with enough context to answer it — hence the dependency on **`diff`**, which is what lets a log entry show the before and after of an entity change rather than just naming it. The rest of the dependency list is about consumption: `views` for browsing, `views_data_export` for producing an export an auditor can read, and `views_bulk_operations` for acting on entries in bulk. Entities live under `/admin/reports/elogger/elog/{elog}` with a settings form at `/admin/structure/elog`, and permissions are granular — `administer event log entity`, `view event log entity`, `delete event log entity` and `administer elogger configurations`. It also ships a `jsonpanel` directory for rendering structured data in the UI. Core requirement is `^9 || ^10 || ^11`. Two considerations that apply to every audit log and are sharper here because diffs are stored: the table grows quickly and needs a retention policy, and the entries themselves contain whatever the changed content contained — so an audit log of personal data is itself personal data.

---

- Record what changed in an entity, not just that it changed.
- Provide an auditable event history.
- Export an audit trail for a compliance review.
- Browse events through Views.
- Filter events by type or user.
- Show a diff of an entity change.
- Investigate an unexpected content change.
- Track configuration events.
- Bulk-delete old log entries.
- Evidence change control for an auditor.
- Restrict who may view the audit trail.
- Report on editorial activity.
- Detect unauthorised changes.
- Support an ISO or SOC control.
- Give reviewers a searchable history.
- Export events to CSV.
- Track deletions with their prior state.
- Support an incident investigation.
