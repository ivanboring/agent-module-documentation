<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Workflow UI — agent index (obsolete)

**Obsolete, hidden submodule.** The Workflow admin UI is now part of the main `workflow` module;
this submodule ships only an `info.yml` (no routes/forms/config/permissions). You do **not** need
to enable it.

- Manage workflows at `/admin/config/workflow/workflow` (route
  `entity.workflow_type.collection`, declared in the parent `workflow.routing.yml`), regardless of
  whether Workflow UI is enabled.
- Create states/transitions/fields: see the parent's
  [configure/workflows.md](../../../../2.2.x/agent/configure/workflows.md).

Key fact: `hidden: TRUE`, depends on `workflow`, `configure: entity.workflow_type.collection`.
Enabling it is a no-op kept only for upgrade compatibility.
