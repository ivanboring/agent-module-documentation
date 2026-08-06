<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Htaccess provides an admin form that combines Drupal's scaffold `.htaccess` with your own extra Apache directives and writes the result to the docroot, optionally rewriting it on every cron run.

---

The stated problem is multisite: each site may want its own `.htaccess`, and editing files on disk per site is awkward. This module moves that into the UI — a path to the default content, a textarea of extra directives, a checkbox to have cron keep the file in sync, and a save that concatenates the two and writes `DRUPAL_ROOT/.htaccess`. It is a small module, one form and one cron hook, and `administer htaccess` is correctly marked `restrict access: true`.

**Two things make that permission far more powerful than its description suggests, both verified on a clean install with an account holding only `administer htaccess` and no other role.** First, the "default .htaccess file path" field is unconstrained free text read with `file_get_contents()` and rendered back into the form; validation checks only that the file exists and is readable. That account read the full 37KB of `sites/default/settings.php` — including `hash_salt` — and then `/etc/passwd`. Second, the save then writes the combined content over the docroot `.htaccess` with no validation, no backup and `EXISTS_REPLACE`; after the first test the site's `.htaccess` had become the text of `settings.php`. Core's `.htaccess` is what sets `Options -Indexes` and the `FilesMatch` rules denying web access to `*.yml`, `*.module`, `*.install` and editor backups, so replacing it removes that hardening in one write — and Apache returns 500 for the whole directory if the result does not parse, including the admin page you would use to undo it. With `reemplazar_automaticamente` on, `hook_cron()` rewrites the file from config every run, so repairing it on disk is undone at the next cron.

Read that as: this permission is root-equivalent on an Apache host and confers arbitrary file read regardless of web server. Delegate it to nobody who is not already a full administrator, and on a production docroot that is read-only the write half fails safely while the read half still works.

---

- Manage a per-site `.htaccess` from the UI in a multisite.
- Add custom Apache directives without filesystem access.
- Append security headers to the generated file.
- Add redirect or rewrite rules for a single site.
- Keep the file in sync automatically on cron.
- Start from Drupal's own scaffold `.htaccess` as the base.
- Point the base at a different template file.
- Review the default content before adding to it.
- Deploy `.htaccess` changes through configuration rather than code.
- Restore the scaffold defaults by resetting the path.
- Check whether the docroot is writable before relying on the module.
- Audit which extra directives a site has accumulated.
- Understand why a site returns 500 after an `.htaccess` save.
- Decide whether `administer htaccess` can be delegated (it cannot, safely).
- Confirm whether cron is silently rewriting the file.
- Recover a site whose `.htaccess` was replaced with invalid content.