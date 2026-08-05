<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# SCSS Compiler (scss) — agent index

Compiles a theme's SCSS/SASS with the pure-PHP `scssphp/scssphp` library, triggered on request
or via Drush. No module dependencies, no permissions of its own; config schema shipped.

Key facts:
- Route `scss.admin` — `/admin/config/development/scss` (`Form\ScssSettingsForm`, permission
  **`administer site configuration`**); `configure` points here.
- Services:
  - **`scss.compiler`** → `Services\ScssCompiler` (`ScssCompilerInterface`), args
    `config.factory`, `request_stack`, `state`. Key methods `checkConfiguration()`,
    `getListToCompile()`, `compileScss()`.
  - **`scss.monitor`** → `Services\ScssMonitor`, an **event subscriber on
    `KernelEvents::REQUEST`** (`compileIfNeeded`) — compilation is triggered by page requests,
    not cron.
- Settings (`scss.settings`): `active`, `compile_logged_out`, the theme, `scss_directory`
  (usually `sass`/`scss`, relative to theme root), `css_directory` (usually `css`),
  `additional_import_paths`, `additional_paths_to_watch`, `files_to_ignore`,
  `output_formatting`, `source_maps`. Last-compile timestamps are kept in **state** under
  `scss_last_compile_date_*`.
- **`compile_logged_out`** decides whether anonymous requests can trigger a rebuild. With it off
  (a common production choice) a change deployed without an authenticated hit will not compile —
  use the Drush command in deployment instead.
- Drush: `drush scss` ("Compile SASS/SCSS"), declared in `scss.drush.inc` via
  `scss_drush_command()` — the legacy Drush 8 style hook, so confirm it registers on your Drush
  version (`drush list | grep scss`).
- Library: `scssphp/scssphp ^2` via composer. `checkConfiguration()` checks
  `class_exists('\ScssPhp\ScssPhp\Compiler')` and falls back to a legacy
  `sites/all/libraries/scssphp/scss.inc.php` path.

```bash
drush cget scss.settings
drush scss                       # compile from the CLI
drush sget scss_last_compile_date_THEME
```

Caution: compiling on request means a slow first hit after every source change, and any PHP
error in a Sass file surfaces during a page render. Prefer the Drush command on production and
keep `active` off there if you ship compiled CSS.
