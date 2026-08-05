<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# OpenRouter Provider (ai_provider_openrouter) — agent index

**OpenRouter** provider plugin for Drupal's **`ai`** module. Requires `ai` and **`key`**.
`administer ai providers` is `restrict access: true`. Version **1.1.6**.
**Core requirement `^10.5 || ^11.2` — unusually tight at both ends.**

**The `key` dependency is the right arrangement** — the API key comes from a **Key entity** rather
than a settings field, so it never reaches exported configuration.

**What OpenRouter adds:** it is itself an aggregator — one account and one API reach models from
OpenAI, Anthropic, Google, Meta and others, with routing and fallback. That indirection is the point
for a site comparing models, using different ones per task, or avoiding a single vendor's contract.
**It also costs a layer:** OpenRouter sees every prompt and response passing through.

**Three things for the deployment conversation:**
1. **The key is a spending credential** — real cost, at speed. Environment variable behind a **Key**
   entity, a **spend limit set at the provider**, and someone watching it.
2. **Data handling is contractual, not technical.** Prompts may carry personal data or unpublished
   content, and passing them through an aggregator to an underlying provider is a **processing
   chain** that belongs in the privacy assessment.
3. **Model availability changes without notice** on an aggregator — a site pinned to a specific
   model needs a plan for the day it is withdrawn.
