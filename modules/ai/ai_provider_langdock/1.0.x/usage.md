<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Langdock Provider for Drupal AI provides an AI provider plugin for Langdock, letting the AI module use Langdock models.

---

Langdock Provider for Drupal AI adds a provider plugin for the Langdock LLM platform to the Drupal AI
module — so AI operations (chat/completion/etc.) can be routed to Langdock models. It depends on the AI
module and is configured at `ai_provider_langdock.settings_form`, in the AI package.

Use it to use Langdock as an AI backend. The security-relevant point: it authenticates to the Langdock API
with an API key — **store that key as a secret** (Key entity / environment variable), not in exported config
or code, and be aware content sent to the AI provider leaves the site (data-handling for sensitive prompts).
It is an integration/AI feature with no access-control role. Configure the Langdock connection and API
key.

---

- Provide a Langdock AI provider.
- Route AI operations to Langdock.
- Use Langdock LLM models.
- Depend on the AI module.
- Configure at the settings form.
- Store the Langdock API key as a secret.
- Avoid the key in exported config.
- Mind data sent to the AI provider.
- Handle sensitive prompts carefully.
- Have no access-control role.
- Configure the Langdock connection.
- Use Langdock as a backend.
- Authenticate to the Langdock API.
- Handle the API key securely.
- Configure AI provider.
- Connect to Langdock.
- Provide AI models.
- Use an LLM provider.
- Configure the provider.
- Integrate Langdock AI.
