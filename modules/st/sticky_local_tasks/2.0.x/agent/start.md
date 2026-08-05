<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Sticky Local Tasks (sticky_local_tasks) — agent index

Pins Drupal's local task tabs so they stay visible while scrolling. No module dependencies.
PHP >= 8.1. Core requirement `^10 || ^11`.
Settings at `/admin/config/user-interface/sticky-local-tasks`.

Key facts:
- **Permission mismatch worth knowing:** `sticky_local_tasks.permissions.yml` declares
  `administer sticky local tasks` (`restrict access: true`), but
  `sticky_local_tasks.routing.yml` gates the settings form with core's
  **`administer site configuration`**. The module-specific permission is declared and unused —
  granting it does not give access to the form.
- Surface: `src/StickyLocalTasksBuilder.php`, `src/Position.php`, `src/Form/`, `src/Plugin/`,
  `sticky_local_tasks.theme.inc`, plus two Twig templates
  (`menu-local-tasks--sticky-local-tasks.html.twig`,
  `menu-local-task--sticky-local-tasks.html.twig`) and a libraries entry.
- `sticky_local_tasks.api.php` documents the extension hooks for altering the task list.
- Purely presentational — it changes where existing local tasks render, never which tasks
  exist or who may reach them.
