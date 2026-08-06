<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
DeepSeek Provider adds DeepSeek as a provider for Drupal's AI module.

---

DeepSeek's position among providers is cost and openness: its models are priced well below the established Western APIs and its weights are published, so a site can prototype against the hosted API and move to self-hosting without changing anything above the provider layer — the same exit route `ai_provider_mistral` offers, at a lower price point. For a high-volume, low-stakes workload — classifying support tickets, generating alt-text drafts, summarising a large archive — the difference in cost per token decides whether the feature is affordable at all. Version **1.1.0** requiring `ai (>=1.0-beta)` and **`key`**, on core `^10 || ^11`. The `key` dependency keeps the API key in a Key entity from an environment variable rather than in exported configuration. **The consideration specific to this provider is jurisdiction, and it should be raised explicitly rather than left implied.** DeepSeek is a Chinese company processing in China, so prompts sent to the hosted API leave the EU and the UK, and several European regulators and public bodies have issued guidance restricting its use. For a site handling personal data, unpublished content or anything under an organisational data-residency policy, that is a procurement and data-protection decision rather than a technical one, and it needs answering before the module is configured rather than after. The **self-hosting route is what makes the model usable where the hosted API is not** — the weights can be run on infrastructure the organisation controls, which removes the transfer question entirely and is the reason openness matters here beyond ideology. The three standing points apply as for every provider: the key is a spending credential, a prompt is a disclosure, and a pinned model needs a plan for when it changes.

---

- Add a low-cost AI provider.
- Classify support tickets at volume.
- Generate alt-text drafts cheaply.
- Summarise a large content archive.
- Prototype an AI feature affordably.
- Provide models to the AI module.
- Run open-weight models later.
- Support a high-volume AI workload.
- Store an AI key in a Key entity.
- Compare provider costs.
- Add AI classification to a workflow.
- Generate metadata suggestions in bulk.
- Support an experimental AI feature.
- Plan a path to self-hosted inference.
- Add content tagging assistance.
- Reduce AI running costs.
- Draft summaries for an editor to review.
- Evaluate a model for a specific task.
