# acquia_contenthub_dashboard — agent start

Adds a **Content Hub dashboard** for monitoring syndication. Requires `acquia_contenthub`.

- Dashboard: `/admin/acquia-contenthub/contenthub-dashboard` (route
  `acquia_contenthub_dashboard.ach_dashboard`, access check `_contenthub_dashboard_access`).
- Entity redirect helper: `/acquia-contenthub/entity-edit/{entity_type}/{uuid}` (route
  `acquia_contenthub_dashboard.redirect_entity_edit_form`) → redirects a CH UUID to the local
  entity edit form.
- **Permission:** `administer ach dashboard` ("Administer Acquia ContentHub Dashboard",
  restricted) — separate from the base `administer acquia content hub`, so dashboard access can
  be delegated independently.
- **Drush:** `acquia:contenthub-dashboard-allowed-origins` — manage which origins the dashboard
  may display.

No config form/schema. UI + one Drush command only, so no further solution docs.
