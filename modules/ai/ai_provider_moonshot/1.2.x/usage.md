<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Moonshot AI Provider enables the use of Moonshot AI for the Drupal AI module.

---

Moonshot AI Provider adds a provider plugin for Moonshot AI to the Drupal AI module — so AI operations
can be routed to Moonshot's models. It depends on the AI module and is configured at
`ai_provider_moonshot.settings_form`, in the AI Providers package.

Use it to use Moonshot as an AI backend. Security note: it authenticates to the Moonshot API with an API key
— **store that key as a secret** (Key entity / environment variable), and be aware prompts sent to the
provider leave the site (data-handling for sensitive content). It is an integration/AI feature with no
access-control role. Configure the Moonshot connection and API key.

---

- Provide a Moonshot AI provider.
- Route AI operations to Moonshot.
- Depend on the AI module.
- Configure at the settings form.
- Store the Moonshot API key as a secret.
- Mind prompts sent to the provider.
- Handle sensitive content carefully.
- Have no access-control role.
- Use Moonshot as a backend.
- Configure the connection.
- Authenticate to Moonshot.
- Handle the API key securely.
- Use Moonshot models.
- Configure AI provider.
- Connect to Moonshot.
- Provide AI models.
- Integrate Moonshot AI.
- Use an LLM provider.
- Configure the provider.
- Add Moonshot AI.
