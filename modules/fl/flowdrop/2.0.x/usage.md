<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
FlowDrop is a drag-and-drop workflow editor: workflows are graphs of typed nodes — AI models, data transforms, HTTP calls, triggers, branches — assembled visually and executed by a runtime inside Drupal.

---

The category is familiar from n8n, Zapier and Node-RED, and the argument for having it inside Drupal rather than beside it is data gravity. A workflow that reads entities, calls a model, writes the result back and notifies someone does not need to leave the site, cross an authentication boundary or replicate the content model somewhere else. With eighteen submodules the suite is closer to a subsystem than a module: a runtime and executor, session and memory handling for conversational flows, an orchestration layer with connectors, triggers, a pipeline abstraction, a state graph, a job system, an interrupt mechanism for human-in-the-loop steps, a chat surface and a playground for trying nodes out.

**The trusted-publisher design is the part worth singling out.** Workflows can be exported as bundles and imported, which is exactly the shape of a supply-chain problem — an imported workflow can call models, make HTTP requests and touch content. FlowDrop's answer is `FlowDropTrustedPublisher` entities holding publisher keys, with the permission's own description spelling out the consequence: *"Granting trust to a publisher allows its signed bundles to be imported."* Signature verification before import, an explicit trust decision, and a separate `restrict access` permission for making it. That is the right architecture, and it is rare in contrib.

Permissions are separated accordingly: `administer flowdrop` (`restrict access: true`) for everything, `administer flowdrop configuration`, and `administer flowdrop trusted publishers` (`restrict access: true`) held separately, because deciding who may be trusted is a different decision from building workflows.

Two caveats. It requires Drupal `^11.3` — current-edge only. And it ships **SDC components** through `flowdrop_ui_components`; on the review install those components, together with `canvas`, triggered an assertion fatal in Canvas's component discovery (see `canvas_field_component`). FlowDrop itself was fine once Canvas was removed.

---

- Build an automation workflow visually.
- Chain an AI model into a data pipeline.
- Call an external HTTP API from a workflow.
- Transform data between steps.
- Trigger a workflow from a Drupal event.
- Run a scheduled workflow as a job.
- Pause a workflow for human approval.
- Build a conversational flow with memory.
- Expose a chat surface backed by a workflow.
- Branch a workflow on a condition.
- Model a process as a state graph.
- Try a node out in the playground.
- Export a workflow as a signed bundle.
- Import a workflow only from a trusted publisher.
- Separate who may build workflows from who grants trust.
- Orchestrate several workflows together.
- Keep automation next to the content it acts on.
- Replace an external automation tool for Drupal-centric work.