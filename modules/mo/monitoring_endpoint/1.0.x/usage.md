<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Monitoring Endpoint provides a JSON API endpoint for external monitoring tools to access the status of enabled Monitoring sensors, protected by a token.

---

Monitoring Endpoint provides a JSON API endpoint (`/monitoring/status`) for external monitoring tools —
returning the status of all enabled Monitoring-module sensors (and monitored cron jobs) so an uptime/health
monitor can poll the site's health. Access is gated by a token passed as `?token=`, matched against a
configured `endpoint_key`. It requires PHP 8.1 and depends on the Monitoring module. The settings form is
correctly restricted to `administer site configuration`.

**Security caveat — the endpoint is unauthenticated when the key is empty, which is the default (see the
module's local security notes).** The `endpoint_key` ships as an empty string, and the access check allows
the request when the supplied token equals the configured key — so `/monitoring/status?token=` (empty
token) matches the empty default and the endpoint is served **anonymously** until an administrator sets a
non-empty key. Verified on this site: with the default config, an anonymous `?token=` request returned HTTP
200 with the full sensor JSON (failure counts, cron status, system/cache sensors), while a missing or wrong
token returned 403. **After enabling this module, set a non-empty `endpoint_key` immediately** — until you
do, the site's monitoring/cron status is publicly readable. (The token compare also uses `===` rather than
`hash_equals()` — a minor, non-constant-time issue.) Serve the endpoint only over HTTPS and treat the token
as a bearer secret.

---

- Expose Monitoring sensor status as JSON.
- Let external monitors poll site health.
- Return cron/sensor status.
- Gate access with a ?token= key.
- Require PHP 8.1.
- Depend on the Monitoring module.
- SET a non-empty endpoint_key immediately.
- Know the default empty key = unauthenticated.
- Understand ?token= (empty) matches the empty default.
- See the module's security notes.
- Serve the endpoint only over HTTPS.
- Treat the token as a bearer secret.
- Know the compare uses === (minor).
- Verify the endpoint is not public.
- Restrict the settings form (admin).
- Poll status from a monitor.
- Protect the status endpoint.
- Avoid anonymous status disclosure.
- Configure the endpoint key.
- Secure the monitoring endpoint.
