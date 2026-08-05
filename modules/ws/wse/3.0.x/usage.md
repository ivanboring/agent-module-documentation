<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Workspaces Extras fills in what core's Workspaces module leaves out — configuration staging, deployment, scheduled publishing, previews for people without accounts, menu handling and housekeeping — through nine submodules layered on the core feature.

---

Core Workspaces lets a team assemble a set of content changes and publish them together, which is the right primitive and, on its own, not a workflow. WSE supplies the rest, one concern per submodule: **wse_config** brings configuration changes into a workspace (core Workspaces handles content only, which is the single biggest gap), **wse_deploy** handles pushing between environments, **wse_scheduler** publishes a workspace at a chosen time, **wse_preview** shares a preview with reviewers who have no Drupal account, **wse_menu** deals with menu links inside a workspace, **wse_lb** with Layout Builder, **wse_group_access** with Group integration, **wse_task_monitor** with visibility of long-running operations, and **wse_prune** with clearing out old workspaces — necessary, because workspace data accumulates. A `/wse/switch-to-live` route is declared `_access: 'TRUE'`, which is benign since Live is the default state everyone can already see. Note the core requirement: **`^11.3 || ^12`** — this release does not support Drupal 10 at all — and that it is **3.0.0-alpha4**, an alpha, for a module operating on unpublished content and deployment.

---

- Stage configuration changes alongside content.
- Publish a set of changes together at a chosen time.
- Share a preview with someone who has no account.
- Deploy a workspace between environments.
- Schedule a site relaunch for a specific moment.
- Handle menu links inside a workspace.
- Preview Layout Builder changes in a workspace.
- Prune old workspaces to control growth.
- Monitor a long-running publish operation.
- Combine workspaces with Group access.
- Review a campaign's changes as a set.
- Avoid publishing half-finished changes.
- Coordinate a multi-page content update.
- Give stakeholders a preview link.
- Roll out a seasonal change on schedule.
- Keep configuration and content changes together.
- Reduce release-day risk.
- Track what a workspace will change.
