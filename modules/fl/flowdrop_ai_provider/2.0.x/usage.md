<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
FlowDrop AI Provider connects FlowDrop's visual workflows to the Drupal AI module's provider abstraction.

---

FlowDrop (documented in wave 84) builds workflows visually, and AI nodes are among its most-used. This is the join: FlowDrop's AI steps go through the AI module's provider abstraction rather than talking to a vendor directly.

That layering is worth stating because it is what makes both modules better. FlowDrop does not need to know about OpenAI, Anthropic or a local model; the AI module already holds the credential, the provider choice and the operation types. A workflow written today runs against a different model tomorrow by changing configuration, and the credential never appears in a workflow definition — which matters, because workflow definitions are exported, versioned and, in FlowDrop's case, shareable as signed bundles.

**The cost question follows from the same layering.** A workflow can call a model in a loop, over a collection, on a trigger that fires per entity save. Nothing about the visual editor makes that cost visible while it is being built, and a workflow that looked reasonable can generate thousands of calls once it runs against real data. Provider-side spend limits are the reliable control; watching the invoice is not.

Requires Drupal `^11.3`, in line with FlowDrop itself.

---

- Use AI models inside a FlowDrop workflow.
- Route AI steps through the provider abstraction.
- Swap models without editing workflows.
- Keep credentials out of workflow definitions.
- Share a workflow bundle without a secret.
- Call a model over a collection.
- Trigger AI processing on entity save.
- Estimate cost before running a workflow.
- Apply provider-side spend limits.
- Watch for loops calling a model.
- Compare providers behind one workflow.
- Plan an AI automation architecture.
- Audit which workflows call models.
- Document the module's behaviour for the team.
- Review it during a site audit.
- Verify its assumptions after an upgrade.
