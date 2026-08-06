<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Groq Provider adds Groq as a provider for Drupal's AI module.

---

Providers in this space differ mainly on three axes — which models, at what price, at what latency — and Groq's proposition is the third. It runs inference on purpose-built hardware and returns tokens substantially faster than general-purpose GPU inference, which changes what an AI feature can be used for rather than merely making it nicer. A summarisation that takes eight seconds is a background job with a spinner; one that takes under a second can run while an editor watches, which is the difference between a feature people use and one they wait for. That matters for anything interactive: inline suggestions, autocomplete, an editorial assistant, a search that reformulates a query before running it. Version **1.2.0-rc1** — a release candidate — requiring `ai` and **`key`**, on core `^10.2 || ^11`, with settings at its own form. The `key` dependency is the right arrangement, keeping the API key in a Key entity from an environment variable rather than in exported configuration. Three things belong in any AI provider deployment and are worth repeating because they are easy to skip when the appeal is speed. **The key is a spending credential**, so set a limit at the provider and have someone watching it. **A prompt is a disclosure** — whatever is sent has left the site, and unpublished content, personal data and internal notes in a prompt need the same consideration as any other transfer, including where the provider processes. And **model availability changes**, so pin a model and know what the site does when it is withdrawn or its behaviour shifts under the same name; a fast provider offering open-weight models is one where that risk is lower than most, since the same weights can usually be run elsewhere.

---

- Add low-latency AI inference.
- Support an interactive editorial assistant.
- Generate suggestions while an editor types.
- Reformulate a search query in real time.
- Summarise content quickly.
- Power an inline AI feature.
- Reduce waiting on AI responses.
- Add fast autocomplete from a model.
- Support a responsive AI interface.
- Provide models to the AI module.
- Generate alt text quickly.
- Support a high-volume AI workload.
- Store an AI key in a Key entity.
- Add AI classification to a workflow.
- Reduce perceived latency in an AI tool.
- Support a chat-style interface.
- Run open-weight models via an API.
- Compare provider latency.
