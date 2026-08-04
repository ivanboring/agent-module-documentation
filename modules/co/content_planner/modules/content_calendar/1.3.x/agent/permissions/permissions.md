# Permissions — content_calendar

All four are `restrict access: true` (from `content_calendar.permissions.yml`):

- `view content calendar` — view the calendar. **Also gates the state-changing endpoints**
  `content_calendar.upate_node_publish_date` (rewrites node `created`/`publish_on`) and
  `content_calendar.duplicate_node` (clones a node); those routes perform writes without a
  per-node access check — see `../../security.md`.
- `manage content calendar` — intended to allow editing all content in the calendar. (Defined,
  but the reschedule/duplicate routes above do not actually require it.)
- `manage own content calendar` — intended to allow editing own content in the calendar.
- `administer content calendar settings` — the settings form + gates the "add content" affordances
  in the calendar UI.
