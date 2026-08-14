<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# yunke_help route surface (developer tools)

Every route below requires `_permission: 'yunke help'` and `_maintenance_access: TRUE`. The permission is defined in `yunke_help.permissions.yml` **without** `restrict access: TRUE`.

## Introspection (read)
- `/yunke-help` — index (`Main::index`).
- `/yunke-help/phpinfo` — `phpinfo()` then `die` (`PhpInfo::showPhpInfo`). Discloses PHP env vars, paths, and any secrets present in the environment.
- `/yunke-help/container` — compiled container cache dump (`DataDumper::showContainer`).
- `/yunke-help/container-run` — runtime container: aliases, **parameters**, synthetic services, private service names, full serialized service definitions (`DataDumper::showRunContainer`).
- `/yunke-help/event` — event-dispatcher listeners/priorities (`DataDumper::showEvent`).
- `/yunke-help/theme-registry` — theme hook registry (`DataDumper::showThemeRegistry`).
- `/yunke-help/plugin`, `/yunke-help/entity/{method}`, `/yunke-help/print-data/{type}`, `/yunke-help/class-path`, `/yunke-help/yaml/{encode,decode}` — plugin/entity/schema/class/YAML helpers.
- Bundled forms under `src/Form/*` explore field/schema/hook/menu-tree/route data.

## Maintenance (mutating)
- `/yunke-help/cache-clean` — `findTables('cache_%')` then `truncate` each (`CacheClean::clean`).
- `/yunke-help/twig-clean-cache`, `/yunke-help/twig-cache-garbage-collection` — clear compiled Twig.
- `/yunke-help/op/{type}` (`Op::index`) — `rebuild-routes`, `rebuild-theme-registry`, `cron-key` (rotates and prints the cron key), `delete-unused-managed-file` (deletes managed files with usage 0), `clean-batch`, locale-js rebuilds.
- `/yunke-help/rest-password` — form resetting the **current** account's password only (`RestPassword::rest` gate + `Form\RestPassword::submitForm`), echoing the new password in plaintext.

## Security posture (observations only)
- Single non-restricted permission unlocks secret disclosure (phpinfo, container parameters) and destructive maintenance (truncate all cache tables, delete unused files, rotate cron key). Treat `yunke help` as effectively "super developer" and never enable on production.
- No CSRF token on the GET maintenance routes (e.g. `/cache-clean`, `/op/*`) — they mutate on a plain GET, so a permitted user can be CSRF'd into clearing caches / rotating the cron key.
- `unserialize()` in `DataDumper` operates on the container cache (trusted build artifact), not request data.
