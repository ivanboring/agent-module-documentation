<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Cache Utility (cache_utility) — agent index

HTTP endpoints for clearing Drupal caches, cache tags, **PHP OPcache** and **APCu**. No module
dependencies. Core requirement `^10 || ^11`. Settings at
`/admin/config/development/cache_utility` (permission `administer cache utility configuration`,
`restrict access: true`). Submodule: `cache_utility_admin_toolbar`. Drush commands in
`src/Commands/`.

## Authentication is a shared header secret, not Drupal access

All twelve action/status routes are declared **`_access: 'TRUE'`** with
`_maintenance_access: 'TRUE'`, and each controller instead checks:

```php
$accessKey = $request->headers->get("CU-ACCESS-KEY");
if (!$accessKey) { return denied; }
if ($accessKey != Drupal::config('cache_utility.settings')->get('security.accessKey')) { return denied; }
```

**Verified anonymously on this site: every route returns
`{"success":false,"error":"Access denied."}`** — so the bare `_access: 'TRUE'` is not the hole it
looks like. Two real problems with the implementation are recorded in the local `security.md`:

- the comparison is `!=`, which applies numeric-string juggling — a numeric key like `1000` is
  matched by `1e3` (verified on PHP 8.4) — and is not constant-time, on endpoints with **no flood
  control**;
- **`security.accessKey` lives in `cache_utility.settings`**, so `drush cex` commits the secret to
  version control. Exclude it from export or override it from `settings.php`/an environment
  variable.

Routes (all GET): `drupalcache/{clear,status}`, `drupalcachetables/clear`,
`cachetags/{clear,status}`, `opcache/{clear,config,status}`, `apcu/{clear,config,status}`, all
under `/admin/cache_utility/`.

Other notes:
- **`opcache_reset()` affects the whole PHP-FPM pool**, not only this site — relevant on shared
  hosting.
- `_maintenance_access: 'TRUE'` is deliberate: the endpoints answer during maintenance mode,
  which is when a deploy needs them.
- `skip_ssl_verification` only adds `--insecure` to the **example** curl command shown on the
  settings form; it changes no request the module makes.
