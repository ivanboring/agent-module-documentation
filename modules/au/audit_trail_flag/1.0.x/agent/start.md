<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Audit Trail Flag (audit_trail_flag) — agent index

**Logs flag/unflag operations as entries in the admin_audit_trail module.**

- **Version:** 1.0.x (1.0.0)
- **Core:** ^10 || ^11
- **Depends on:** admin_audit_trail, flag
- **Key service:** `audit_trail_flag.flag_subscriber` (`AuditTrailFlagSubscriber`), tagged `event_subscriber`, listening on `FlagEvents::ENTITY_FLAGGED` / `ENTITY_UNFLAGGED`
- **Routes/permissions:** none of its own
- **Security:** no routes, no public endpoints; purely reacts to Flag events and writes to the admin_audit_trail log.
