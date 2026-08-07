<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# FlowDrop AI Provider (flowdrop_ai_provider) — agent index

Connects **FlowDrop** workflows to the **AI** module's provider abstraction.
Version **2.0.0**. Core `^11.3`. Depends on `flowdrop`, `ai`.

**The layering makes both modules better:** FlowDrop need not know about any vendor; the AI module
holds the credential, provider choice and operation types. A workflow runs against a different model
by configuration, and **the credential never appears in a workflow definition** — which matters
because FlowDrop definitions are exported, versioned and shareable as signed bundles.

**Cost follows from the same layering:** a workflow can call a model in a loop, over a collection,
on a per-entity-save trigger, and the visual editor makes none of that cost visible while it is
being built. **Provider-side spend limits are the reliable control**, not watching the invoice.