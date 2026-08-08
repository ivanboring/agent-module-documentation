<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
OpenAI Compatible Provider is a provider for OpenAI compatible APIs (DeepSeek, etc.).

---

OpenAI Compatible Provider adds an AI provider plugin for any **OpenAI-compatible** API to the Drupal AI
module — so AI operations can be routed to services that speak the OpenAI API (DeepSeek, self-hosted/local
LLMs, other OpenAI-compatible gateways) by pointing at a configurable base URL. It depends on the AI module,
is configured at `ai_provider_openai_compatible.settings_form`, in the AI Providers package.

Use it to use any OpenAI-compatible endpoint as an AI backend. Security notes: it authenticates with an API
key — **store that as a secret** (Key entity / env var); the **base URL is admin-configured**, so point it
only at trusted endpoints and use **HTTPS**; and prompts sent leave the site (data-handling for sensitive
content — a **self-hosted/local** endpoint keeps data in-house). It has no access-control role. Configure the
endpoint and API key.

---

- Provide an OpenAI-compatible AI provider.
- Route AI to DeepSeek/local LLMs/etc.
- Point at a configurable base URL.
- Depend on the AI module.
- Configure at the settings form.
- Store the API key as a secret.
- Point the base URL at trusted endpoints only.
- Use HTTPS.
- Mind prompts sent to the provider (self-host keeps data in-house).
- Have no access-control role.
- Configure the endpoint and key.
- Use OpenAI-compatible services.
- Handle the AI provider.
- Configure credentials.
- Use a custom endpoint.
- Handle credentials securely.
- Configure the provider.
- Route to LLMs.
- Connect to an endpoint.
- Provide AI models.
