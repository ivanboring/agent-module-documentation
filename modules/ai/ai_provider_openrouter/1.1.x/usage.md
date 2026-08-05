<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
OpenRouter Provider adds OpenRouter as a provider for Drupal's AI module, giving access to many models through one API and one key.

---

The `ai` module abstracts providers so a site's AI features are written once and pointed at whichever service it uses. OpenRouter is a useful thing to point them at, because it is itself an aggregator: one account and one API give access to models from OpenAI, Anthropic, Google, Meta and others, with per-request routing and fallback when a provider is unavailable. For a site that wants to compare models, use different ones for different tasks, or avoid committing to a single vendor's contract, that indirection is the point — and it costs a layer, since OpenRouter sees every prompt and every response as they pass through. Version **1.1.6**, requiring `ai` and — importantly — **`key`**, so the API key comes from a Key entity rather than a settings field, which is the arrangement that keeps it out of exported configuration. `administer ai providers` is `restrict access: true`. The core requirement is **`^10.5 || ^11.2`**, unusually tight at both ends. Three things belong in the deployment conversation. **The key is a spending credential**: an OpenRouter key can incur real cost at speed, so it belongs in an environment variable behind a Key entity, with a spend limit set at the provider and someone watching it. **Data handling is a contractual question, not a technical one** — prompts may contain personal data or unpublished content, and passing them through an aggregator to an underlying model provider is a processing chain that needs to be in the privacy assessment. And **model availability changes without notice** on an aggregator, so a site pinned to a specific model needs a plan for the day it is withdrawn.

---

- Access many AI models through one key.
- Compare models for a task.
- Avoid committing to one AI vendor.
- Add fallback when a provider is down.
- Use a cheaper model for bulk tasks.
- Route different tasks to different models.
- Add AI capability to a Drupal site.
- Use Anthropic and OpenAI models together.
- Store an AI key in a Key entity.
- Support an AI proof of concept.
- Control AI spending centrally.
- Test a new model quickly.
- Support content summarisation.
- Power an AI search integration.
- Provide models to the AI module.
- Support a multi-model strategy.
- Reduce vendor lock-in.
- Evaluate model quality per task.
