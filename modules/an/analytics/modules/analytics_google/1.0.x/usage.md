Hidden submodule of Analytics API that registers a Google Analytics (`google_ga`) analytics_service plugin so a site can add Google Analytics tracking through the Analytics UI.

---

`analytics_google` provides one `@AnalyticsService` plugin, `google_ga` (`GoogleAnalyticsGa extends ServicePluginBase`, `multiple = true`), labelled "Google Analytics (ga.js)". Its configuration form has a single required numeric `id` (Tracking ID), stored under the service entity's `service_configuration` (schema `analytics.service_configuration.google_ga` → `id`). Its `getOutput()` currently returns a placeholder `<googleanalytics tracking_id="…">` html_tag render element (the code comments mark it as placeholder). The module is `hidden: true`, has an empty `.module` file, and depends only on `analytics`. You use it by enabling the submodule and adding a service of type "Google Analytics" at `/admin/config/services/analytics`; all privacy handling (DNT, admin-route suppression, bypass permission) is inherited from the parent Analytics API.

---

- Add Google Analytics tracking to a site through the Analytics API UI.
- Store a Google Analytics Tracking ID as an analytics service config entity.
- Run multiple Google Analytics instances (plugin allows `multiple`).
- Inherit Do Not Track and admin-route suppression from the parent module.
- Enable/disable Google Analytics without deleting its configuration.
- Export Google Analytics tracking configuration as deployable config.
- Provide GA as one of several analytics services managed in one place.
- Exclude staff from GA tracking via the `bypass all analytics services` permission.
- Configure GA tracking via the standard analytics_service subform.
- Keep GA config schema-validated (`analytics.service_configuration.google_ga`).
- Combine GA with GTM/Optimize/Piwik on the same site.
- Serve as a starting point for a full GA4/gtag implementation (current output is placeholder).
- Manage GA alongside privacy toggles centrally.
- Add GA tracking without hand-editing page templates.
- Use the Analytics permission model to control who configures GA.
