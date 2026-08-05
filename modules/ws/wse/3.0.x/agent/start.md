<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Workspaces Extras (wse) — agent index

Nine submodules extending core **Workspaces**. Depends on core `workspaces`, `workspaces_ui`,
`options`.

> **Core requirement `^11.3 || ^12` — no Drupal 10 support at all**, unusually narrow.
> **Release is 3.0.0-alpha4 — alpha**, for a module that governs unpublished content and
> deployment. Weigh that before proposing it for production.

| Submodule | Fills in |
|---|---|
| **`wse_config`** | configuration changes in a workspace — core Workspaces is **content only**; this is the biggest gap it closes |
| `wse_deploy` | pushing a workspace between environments |
| `wse_scheduler` | publish a workspace at a chosen time |
| `wse_preview` | share a preview with reviewers who have **no Drupal account** |
| `wse_menu` | menu links inside a workspace |
| `wse_lb` | Layout Builder in a workspace |
| `wse_group_access` | Group integration |
| `wse_task_monitor` | visibility of long-running operations |
| `wse_prune` | delete old workspaces — needed, workspace data accumulates |

Key facts:
- `wse.switch_to_live` at `/wse/switch-to-live` is `_access: 'TRUE'`. Benign — Live is the
  default state every visitor already sees — though it is a state change without a CSRF token.
- `wse.settings` at `/admin/config/workflow/workspaces/settings` requires
  `administer workspaces`.
- Enable only the submodules you need; each adds real behaviour to a subsystem (menus, Layout
  Builder, Group) and they are independently useful.
- `require-dev` lists `depcalc`, `diff`, `group_content_menu`, `s3fs`, `trash` — optional
  integrations, not requirements.
