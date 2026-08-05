<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Log provides a **log entity type** for recording real-world events — an inspection carried out, a delivery received, a treatment administered — as first-class content with types, fields, revisions and a workflow state.

---

The name is misleading if you expect watchdog: this is not about PHP errors, it is about the kind of record an organisation keeps. Anything with a date, a subject, a status and some fields — maintenance records, observations, activity logs — fits the shape, and building it as a bespoke entity type each time is a lot of boilerplate. Log supplies it generically: bundles ("log types") defined in configuration, revisions, and a workflow state driven by `state_machine`, so a record can move from planned to done. It comes from the farmOS ecosystem, where it models farm activities, but nothing about it is agriculture-specific. Routing is done properly: the autocomplete route uses `_entity_create_access: 'log:{log_bundle}'` and the clone form uses `_entity_create_any_access: 'log'` — scoped entity checks rather than flat permissions — alongside a granular permission set including `access log collection`, `administer log types` (marked `restrict access: true`) and `view all log revisions`. Note the narrow **`core_version_requirement: ^11.3`**: this release targets a recent Drupal 11 minor only, with no Drupal 10 support.

---

- Record inspections with dates and outcomes.
- Track maintenance activities as entities.
- Log observations against a location.
- Move a record from planned to completed.
- Define record types with their own fields.
- Keep a revision history of records.
- Report on activity through Views.
- Clone a repeated record.
- Model farm activities.
- Record deliveries received.
- Track treatments or interventions.
- Give records a workflow state.
- Restrict who may administer record types.
- Log safety checks with evidence.
- Build an activity register.
- Attach files to a record.
- Query records by state and date.
- Provide an auditable operational history.
