# git_deploy — agent start

Zero-config utility for sites run from **Git checkouts**. Reconstructs the `version`,
`project`, and `datestamp` that Drupal's packaging script normally writes into `.info.yml`,
by reading the Git log at runtime — so Update Status stops flagging Git-checked-out core/contrib
as unsupported. No UI, no settings, no permissions, no services, no config.

## How it works
- `hook_system_info_alter()` — for each non-hidden extension whose `version` is missing/`-dev`/
  equal to core's version, shells out to `git` (`rev-parse --show-toplevel`, `describe --tags`,
  `merge-base`, `branch -r`, `log`) in the extension's repo to derive the best upstream
  branch/tag, then injects `version` (tag, or `<branch>-dev`), `project` (from the remote
  fetch URL `basename`), and `datestamp` (last common commit's `%at`). Core checkouts are
  verified to actually be Drupal (`DRUPAL_ROOT` / `DRUPAL_ROOT/core`).
- `hook_update_projects_alter()` — refetches and syncs dev-release datestamps against the
  `update_available_releases` key/value store so "update available" comparisons are correct.
- `_git_deploy_get_upstream()` / `_git_deploy_datestamp_sync()` — internal helpers (not an API
  you call).

## Requirements (enforced by hook_requirements)
- PHP `exec()` must be enabled (not in `disable_functions`).
- The `git` binary must be executable from PHP (on PATH).
Either missing → `REQUIREMENT_ERROR` on install and at `/admin/reports/status`.

## Setup
`drush en git_deploy -y`. That is the entire configuration. To confirm effect, check
`/admin/reports/updates` — Git-checked-out projects now show real versions.

No solution docs: the module exposes no configurable surface, invited hooks, Drush commands,
services, or permissions.
