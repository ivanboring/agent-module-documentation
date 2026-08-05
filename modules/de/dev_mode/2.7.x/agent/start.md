<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Development Mode (dev_mode) — agent index

Enabling the module switches the site into development mode; uninstalling restores the previous
settings. **No configuration UI by design** and no permissions, schema or Drush.

> **Never enable on production.** It sets `error_level: verbose` (backtraces to visitors), turns
> off page/render caching, and writes to `settings.php` — or, failing that, chmods
> `sites/default` to 0777 while it edits `services.yml`. See `security.md` at this module's root.

Key facts:
- `hook_install()`:
  1. snapshots `system.performance` (`css`, `js`, `cache`) and `system.logging` (`error_level`)
     into **state** `dev_mode.config` (JSON);
  2. sets css/js `gzip: 0, preprocess: 0`, `cache.page.max_age = 0`, `error_level = verbose`;
  3. appends to `settings.php` an include of `modules/contrib/dev_mode/settings.dev_mode.php`
     (only if the file `is_writable()`; otherwise it logs a warning);
  4. **fallback when settings.php could not be written**: `chmod(sites/default, 0777)`,
     `touch(services.yml)`, `chmod(sites/default, 0555)`, then string-replaces `debug: false` →
     `debug: true`, `auto_reload: null` → `auto_reload: false`, `cache: true` → `cache: false`
     in `sites/default/services.yml`;
  5. `drupal_flush_all_caches()`, `module_set_weight('dev_mode', 49)`.
- `settings.dev_mode.php` adds `development.services.yml` to `$settings['container_yamls']` and
  re-asserts `$config['system.logging']['error_level'] = 'verbose'` plus the performance
  overrides. `development.services.yml` sets
  `http.response.debug_cacheability_headers: true`, `twig.config: {debug: true, auto_reload: true,
  cache: false}` and registers `cache.backend.null` (`NullBackendFactory`).
- Runtime: `hook_preprocess_page()` attaches the `dev_mode/dev-mode` library;
  `hook_page_attachments_alter()` injects `Cache-Control: no-cache, no-store, must-revalidate`,
  `Pragma: no-cache` and `Expires: 0` meta tags.
- `hook_uninstall()` restores config from the state snapshot, strips the settings.php include, and
  (in the fallback path) reverses the services.yml edits — again chmodding `sites/default`
  0777 → 0555.

Practical notes:
- **The 0555 chmod is unconditional in the fallback path**: if your `sites/default` was 0755 or
  0750 before, it is left at 0555 afterwards. Check permissions after install/uninstall.
- The state snapshot is the only record of your previous settings — do not delete
  `dev_mode.config` state while the module is enabled, or uninstall cannot restore.
- Check what it captured: `drush sget dev_mode.config`.
