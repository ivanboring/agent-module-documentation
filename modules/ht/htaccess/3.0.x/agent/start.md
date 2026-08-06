<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Htaccess (htaccess) — agent index

One admin form that concatenates a default `.htaccess` with extra directives and writes
`DRUPAL_ROOT/.htaccess`; optional rewrite on cron.
Configure at `/admin/config/system/htaccess`. Version **3.0.0**.
Core requirement `^10 || ^11`. No dependencies.

Permission: **`administer htaccess`**, `restrict access: true`, gates the only route.

**Treat this permission as root-equivalent. Both halves verified on a clean install with an
account holding only `administer htaccess`:**

1. **Arbitrary file read.** `default_htaccess_path` is unconstrained free text; `validateForm()`
   checks only `file_exists() && is_readable()`, and the contents are rendered into a
   `readonly` textarea. That account read `sites/default/settings.php` (37KB, incl. `hash_salt`)
   and `/etc/passwd`. Fix: `realpath()` + require containment under `DRUPAL_ROOT`.
2. **Unvalidated write.** `submitForm()` writes `$default_content . "\n\n" . $extra` to
   `DRUPAL_ROOT/.htaccess` with `EXISTS_REPLACE`, no backup, no syntax check. After the test the
   docroot `.htaccess` was the text of `settings.php`. That file carries core's `Options -Indexes`
   and the `FilesMatch` deny rules; replacing it removes them. Unparsable content = HTTP 500 for
   the whole site. `hook_cron()` re-writes it when `reemplazar_automaticamente` is on, so on-disk
   repair is undone at the next cron.

On Apache the extra-directives textarea is inherently code-execution-capable (`AddHandler`,
`auto_prepend_file`). That is the module's purpose, not a defect — but it is why the permission
cannot be delegated.

Config: `htaccess.settings` — `default_htaccess_path` (default
`core/assets/scaffold/files/htaccess`), `configuraciones_extra`, `reemplazar_automaticamente`.
Note `default_htaccess_path` is **missing from the config schema**, and `content` is declared but
never written by the form.

`HtaccessController::content()` exists but **has no route** — dead code. `hook_help()` still links
to `base://htaccess` as though it were live.