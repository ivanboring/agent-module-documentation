<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# FlowDrop (flowdrop) — agent index

Visual workflow editor and runtime: graphs of typed nodes (AI models, data transforms, HTTP,
triggers, branches) executed inside Drupal. Version **2.0.0**, `lifecycle: stable`.
Core **`^11.3`** only. Depends on `flowdrop:flowdrop_ui_components`.
**18 submodules** — this is a subsystem, not a module.

Permissions: `administer flowdrop` (**restrict**), `administer flowdrop configuration`,
`administer flowdrop trusted publishers` (**restrict**).

**Single out the trusted-publisher design.** Workflows export as bundles and import — a
supply-chain surface, since an imported workflow can call models, make HTTP requests and touch
content. `Entity/FlowDropTrustedPublisher` holds publisher keys and **signed bundles are verified
before import**; the permission description says it plainly: *"Granting trust to a publisher
allows its signed bundles to be imported."* Signature verification + explicit trust decision +
a separate restricted permission for making it. Rare in contrib; cite it as the model.

Submodules: `flowdrop_runtime`, `flowdrop_workflow` + `flowdrop_workflow_executor`,
`flowdrop_session`, `flowdrop_memory`, `flowdrop_stategraph`, `flowdrop_pipeline`,
`flowdrop_orchestration` + `flowdrop_orchestration_connector`, `flowdrop_trigger`,
`flowdrop_job`, `flowdrop_interrupt` (human-in-the-loop), `flowdrop_chat`, `flowdrop_playground`,
`flowdrop_node_type` / `_category` / `_processor`, `flowdrop_ui_components`.

**Caveat:** `flowdrop_ui_components` ships SDC components. With `canvas` also installed, Canvas's
component discovery asserted and fataled the container (see `canvas_field_component`). FlowDrop
was fine once Canvas was removed.