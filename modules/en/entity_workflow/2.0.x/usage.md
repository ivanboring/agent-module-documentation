<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity Workflow provides workflows for entities, building on core Workflows and Workspaces, with content and workspace submodules.

---

Entity Workflow provides configurable workflows for entities — building on core Workflows and
Workspaces to move entities through defined states with workspace-based staging. It ships
`entity_workflow_content` and `entity_workflow_workspace` submodules and provides its own permissions. It
lets editorial/approval processes apply to entities with workspace isolation.

Use it for editorial workflows that combine state transitions with workspace staging (prepare changes in
a workspace, move through workflow states, publish). It is an automation/workflow feature; workflow
transitions and workspace access are governed by the module's and core's permissions, so verify who can
transition states and publish workspaces matches your editorial trust model. Configure the workflows and
states.

---

- Provide workflows for entities.
- Build on Workflows and Workspaces.
- Move entities through states.
- Stage changes in workspaces.
- Ship content/workspace submodules.
- Provide its own permissions.
- Apply editorial/approval processes.
- Verify who can transition states.
- Verify who can publish workspaces.
- Match the editorial trust model.
- Configure workflows and states.
- Isolate changes per workspace.
- Depend on core Workflows/Workspaces.
- Handle state transitions.
- Support approval flows.
- Publish from a workspace.
- Govern transitions by permission.
- Configure entity workflows.
- Stage and publish content.
- Manage editorial state.
