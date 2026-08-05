<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Migrate Sandbox (migrate_sandbox) — agent index

Interactive scratchpad for the migrate **process pipeline**: paste a source row plus process
config, see the output. Depends on core `migrate`. Core requirement `^9.2 | ^10 || ^11`
(note the single `|` in the first clause — upstream typo, but Composer/Drupal parse `^9.2 | ^10`
the same as `||`).
Form at `/admin/config/development/migrate-sandbox`.

Key facts:
- **Development tool — do not enable on production.** The single permission
  `access migrate_sandbox` is correctly marked **`restrict access: true`**, because the form
  executes migrate process plugins against user-supplied input, and the available plugin set on
  a real site typically includes `callback`. Treat granting it as equivalent to granting
  developer access.
- `src/SandboxMigration.php` constructs a throwaway migration from the submitted config;
  `src/MigrateSandboxMessage.php` captures the migrate message stream so plugin errors are shown
  in the form instead of only being logged.
- No migrations are created, imported or rolled back — nothing touches the migrate map tables.
- Ships `config/install` defaults and `js/migrate-sandbox.js` for the editing UI.
