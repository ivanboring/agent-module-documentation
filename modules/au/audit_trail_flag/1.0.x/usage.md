<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Audit Trail Flag records every flag and unflag operation as an entry in the admin_audit_trail log.

It is a small bridge module: an event subscriber (`AuditTrailFlagSubscriber`) listens for the Flag module's `ENTITY_FLAGGED` and `ENTITY_UNFLAGGED` events and writes a structured audit-trail row (flag label, entity type, entity id/label) via `admin_audit_trail_insert()`. Bulk unflag operations log one entry per flagging. There is no UI, route, or permission of its own — it simply augments the existing admin_audit_trail report.

Use it when you already run Flag and admin_audit_trail and need an accountability record of who flagged/unflagged what and when.
---
Logs flag and unflag operations as entries in the admin_audit_trail module.
---
- Record an audit entry whenever content is flagged
- Record an audit entry whenever content is unflagged
- Track bookmarking / moderation flag activity for accountability
- Log one entry per flagging during bulk unflag operations
- See flag activity alongside other admin_audit_trail events
- Capture the flag label and target entity in each log row
- Audit editorial flags (e.g. "needs review") over time
- Provide a compliance trail for flag-based workflows
- Correlate flag events with other logged admin actions
- Review flag history in the admin audit report
- Attribute flag/unflag actions to users via the audit log
- Monitor spam/report flags being set and cleared
- Add no extra UI while extending existing audit logging
- Keep flag telemetry in the central audit_trail store
- Support incident review by inspecting flag timelines
