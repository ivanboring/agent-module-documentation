# Google Analytics (analytics_google) — agent index

Hidden submodule of [Analytics API](../../../../1.0.x/agent/start.md). Adds one `analytics_service`
plugin. Depends on `analytics`. No settings route of its own — configured as a service at
`/admin/config/services/analytics`.

Key facts:
- Plugin `google_ga` (`GoogleAnalyticsGa extends ServicePluginBase`, `multiple = true`),
  "Google Analytics (ga.js)". Single required numeric config `id` (Tracking ID).
- Schema `analytics.service_configuration.google_ga` → `id`.
- `getOutput()` returns a placeholder `<googleanalytics tracking_id="…">` html_tag.
- Plugin implementation & the framework it plugs into:
  [../../../1.0.x/agent/plugins/analytics-service.md](../../../../1.0.x/agent/plugins/analytics-service.md).
