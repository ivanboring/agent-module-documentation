<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity Logger adds the ability to record log messages against specific entities, giving a per-entity activity log.

---

Entity Logger lets code (and integrations) record log messages associated with specific entities —
so instead of only a global watchdog, each entity can have its own log of events ("synced to CRM",
"payment failed", "imported from feed"). It depends on Dynamic Entity Reference (to reference any entity
type) and Views (to display logs), is configured at `entity_logger.settings`, and provides its own
permissions.

Use it to give editors/administrators a per-entity audit/activity trail, especially useful for
integrations that act on entities. Log entries can contain operational detail, so gate viewing with the
module's permissions (logs may reveal internal process info). It is an administration/logging feature; it
records messages against entities and does not change entity access.

---

- Log messages against specific entities.
- Give each entity an activity log.
- Record per-entity events.
- Log integration actions on entities.
- Depend on Dynamic Entity Reference.
- Use Views to display logs.
- Configure at entity_logger.settings.
- Provide its own permissions.
- Show a per-entity audit trail.
- Gate log viewing by permission.
- Record 'synced to CRM' events.
- Log import/payment events.
- Reveal internal process info (restrict).
- Not change entity access.
- Track entity activity.
- Reference any entity type.
- Aid integration debugging.
- Provide entity-scoped logs.
- Record operational detail.
- Audit entity events.
