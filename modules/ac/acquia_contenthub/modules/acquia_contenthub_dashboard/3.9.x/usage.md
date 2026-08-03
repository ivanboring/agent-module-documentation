The dashboard submodule provides a Content Hub dashboard UI for monitoring syndication and jumping to entity edit forms, gated by its own "Administer Acquia ContentHub Dashboard" permission.

---

It registers a dashboard at `/admin/acquia-contenthub/contenthub-dashboard` (plus an index
sub-page) served by `ContentHubDashboardController` and protected by a custom access check
(`_contenthub_dashboard_access`) backed by the `administer ach dashboard` permission. A helper
route (`/acquia-contenthub/entity-edit/{entity_type}/{uuid}`) resolves a Content Hub UUID to a
local entity and redirects to its edit form, making it easy to jump from the dashboard to the
underlying content. It adds a Drush command
(`acquia:contenthub-dashboard-allowed-origins`) for managing which origins the dashboard is
allowed to display, ships its own JS library and services, and depends on the base
`acquia_contenthub` module. It is a monitoring/reporting layer rather than part of the
publish/subscribe data path.

---

- Monitor Content Hub syndication status from a dedicated dashboard.
- Give operators a single admin screen for Content Hub health.
- Grant dashboard access separately via the "Administer Acquia ContentHub Dashboard" permission.
- Jump from a Content Hub UUID to the local entity's edit form.
- Manage allowed origins shown on the dashboard via Drush.
- Restrict which origins' content the dashboard surfaces.
- Provide a reporting view distinct from the base settings form.
- Review syndication activity without running Drush audits.
- Add a dashboard entry under the Acquia Content Hub admin area.
- Support multi-origin subscriptions by filtering displayed origins.
- Redirect editors to content by UUID for quick fixes.
- Offer a delegated, lower-privilege view for dashboard-only users.
- Complement publisher/subscriber queues with an at-a-glance overview.
- Serve as the operational monitoring surface for a syndication fleet.
- Keep dashboard concerns isolated behind their own access check.
