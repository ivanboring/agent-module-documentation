<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# OhDear Integration (ohdear_integration) — agent index

Publishes `monitoring` sensor results to **Oh Dear**, and pulls Oh Dear's data back into the
Drupal admin. Depends on `monitoring ^1.11`; SDK `ohdearapp/ohdear-php-sdk ^4.4.0`.
Core requirement `^10 || ^11`.

| Route | Path | Access |
|---|---|---|
| `…healthcheck` | `/json/oh-dear-health-check-results` | **`_access: 'TRUE'`** — authenticated in the controller |
| `…settings` | `/admin/config/system/ohdear-settings` | `administer site configuration` |
| `…info` / `…broken_links` / `…uptime` | `/admin/reports/ohdear/…/{monitor_id}` | `access ohdear info` |

**The `_access: 'TRUE'` is compensated, and this was verified.** `OhDearIntegrationController::access()`
requires either a matching `oh-dear-health-check-secret` (header **or query parameter**) or the
`monitoring reports` permission; denials are logged and returned `no-store`. Probed on this site:

```
anonymous, no secret     -> {"error": "Access denied!"} HTTP 403
anonymous, wrong secret  -> {"error": "Access denied!"} HTTP 403
```

Two improvements a maintainer would want:
- **`hash_equals()` instead of `===`** — the comparison is strict (so no numeric-string juggling,
  unlike `cache_utility` in wave 61) but is not constant-time.
- **Drop the query-parameter form of the secret.** A secret in a URL lands in web-server access
  logs, `Referer` headers and proxy logs; a header does not. Configure the monitor to send the
  header.

Other notes:
- The endpoint publishes whatever `monitoring`'s sensors report — cron status, available security
  updates, disk and database health. That is useful to operations and useful to an attacker, which
  is why the secret matters.
