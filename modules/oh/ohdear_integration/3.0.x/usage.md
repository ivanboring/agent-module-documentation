<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
OhDear Integration exposes Drupal's health as a JSON endpoint the Oh Dear monitoring service can poll, and brings Oh Dear's own results — uptime, broken links — back into the Drupal admin.

---

The traffic goes both ways. Outbound, `/json/oh-dear-health-check-results` publishes the results of the `monitoring` module's sensors in Oh Dear's health-check format, so cron failures, disk pressure and available security updates surface in the same dashboard as uptime. Inbound, `/admin/reports/ohdear/{info,broken-links,uptime}/{monitor_id}` pull Oh Dear's data into Drupal behind an `access ohdear info` permission. The health endpoint is where the interesting design is: it is declared `_access: 'TRUE'` at the route, which looks alarming and is not, because the controller authenticates the caller itself — a secret in the `oh-dear-health-check-secret` header (or query parameter) compared with `===`, or the `monitoring reports` permission. This campaign confirmed the denial path: anonymous requests, with and without a wrong secret, both returned `{"error": "Access denied!"}` with HTTP 403, and denials are logged and marked `no-store`. Two small improvements a maintainer would want: `hash_equals()` rather than `===`, and dropping the query-parameter form of the secret, since a secret in a URL lands in access logs, `Referer` headers and proxy logs in a way a header does not.

---

- Publish Drupal health to Oh Dear.
- Monitor cron failures externally.
- Alert on available security updates.
- Surface disk or database problems.
- Show Oh Dear uptime inside Drupal.
- Review broken links from the admin.
- Combine application and uptime monitoring.
- Authenticate the health endpoint with a secret.
- Give ops a single monitoring dashboard.
- Detect a failing scheduled job.
- Monitor several sites consistently.
- Expose monitoring sensors as JSON.
- Restrict Oh Dear reports by permission.
- Alert on a failing integration.
- Track certificate expiry alongside app health.
- Detect an unhealthy deployment.
- Report application health to an SRE team.
- Monitor a Drupal fleet.
