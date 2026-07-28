<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Workflow UI is an **obsolete, hidden** submodule of Workflow. Its administrative UI has been incorporated into the main Workflow module, so it is now an empty placeholder that you do not need to enable.

---

Historically, Workflow UI provided the admin interface for creating and editing workflows, states
and transitions. As of the current Workflow releases that UI lives directly in the main `workflow`
module — the routes `entity.workflow_type.collection`, `.../states`, `.../transition_roles`,
`.../transition_labels` and the CRUD forms are declared in `workflow.routing.yml`. The submodule
now ships **only an `info.yml`** (marked `hidden: TRUE`, depending on `workflow`, `configure:
entity.workflow_type.collection`): no routes, controllers, forms, config, schema, permissions or
services of its own. Enabling it does nothing useful. It is retained purely for upgrade
compatibility with sites that once had it enabled. Manage workflows at
`/admin/config/workflow/workflow` whether or not this module is enabled — see the parent module's
[configure docs](../../../2.2.x/agent/configure/workflows.md).

---

- Recognize that the Workflow admin UI is built into the main `workflow` module, not this submodule.
- Leave Workflow UI disabled on new sites (nothing depends on it).
- Understand why it shows as `hidden` on the Extend page.
- Safely uninstall it on upgraded sites where it was previously enabled.
- Point admins to `/admin/config/workflow/workflow` for the actual workflow management UI.
- Avoid confusion when a tutorial references "Workflow UI" — the functionality moved to the parent.
