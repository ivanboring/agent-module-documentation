<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
LM Studio Provider enables the use of LM Studio for the Drupal AI module.

---

LM Studio Provider adds an AI provider plugin for LM Studio to the Drupal AI module — LM Studio runs
LLMs **locally** and exposes an OpenAI-compatible local server, so AI operations can be routed to a local
model instead of a cloud service. It depends on the AI module, is configured at
`ai_provider_lmstudio.settings_form`, in the AI Providers package.

Use it to use a locally-hosted LM Studio model as an AI backend. Security/data note: because LM Studio runs
locally, prompts stay on your infrastructure (a **data-handling advantage** for sensitive content); point the
provider at your **trusted local endpoint**, and if the LM Studio server is reachable over a network, secure
it (auth/network isolation). It has no access-control role. Configure the LM Studio endpoint.

---

- Use LM Studio as an AI backend.
- Run LLMs locally.
- Route AI to a local model.
- Depend on the AI module.
- Use the OpenAI-compatible local server.
- Keep prompts on your infrastructure.
- Point at a trusted local endpoint.
- Secure the LM Studio server if networked.
- Have no access-control role.
- Configure the LM Studio endpoint.
- Handle local AI.
- Use local models.
- Configure the provider.
- Handle the endpoint.
- Route to LM Studio.
- Keep data in-house.
- Provide local AI models.
- Configure credentials.
- Handle local LLMs.
- Use a local backend.
