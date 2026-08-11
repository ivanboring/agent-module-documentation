<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
An HTTP endpoint for executing (allowlisted) Drush commands during testing.

---

Drush Endpoint provides an HTTP endpoint (`POST /api/drush/{command}`) for executing Drush commands during testing — so a CI/test harness can trigger a small allowlist of Drush maintenance commands (`cr`, `cron`, `uli`, `mim`, `mr`, `sapi-i`, `sapi-r`) over HTTP.

**Security warning (as shipped, 1.0.0-rc1):** the endpoint is OFF unless `$settings['drush_endpoint_enabled'] = true`, but its access checker **does not authenticate the caller at all** (it ignores the account) — so once enabled, ANY user including anonymous can run the allowlisted commands (`cron`/`mim`/`sapi-i`/`cr` = DoS; `mr` = migrate rollback which DELETES content; and `uli` → one-time login link / account takeover if `drush_endpoint_allow_uli` is also set). **Never enable on a public site without adding a real permission/token check and firewalling the path.** Supports Drupal 10, 11, and 12.

---

- Expose Drush over HTTP for testing.
- POST to /api/drush/{command}.
- Allow only 7 commands.
- Gate behind a settings flag (off by default).
- WARNING: no caller authentication when enabled.
- Allow anonymous command execution once enabled.
- Risk DoS (cron/mim/sapi-i) + `mr` content deletion.
- Escalate to ATO via `uli`.
- Require a permission/token check before use.
- Firewall the path in production.
- Support Drupal 10, 11, and 12.
- Not use on public sites unhardened.
- Support Drupal.
- Support Drupal.
- Support Drupal.
