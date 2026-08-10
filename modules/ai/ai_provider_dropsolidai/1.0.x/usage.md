<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
AI Provider Dropsolid AI provides Dropsolid AI integration.

---

AI Provider Dropsolid AI provides a **Dropsolid AI provider** for the AI module — enabling Dropsolid's
hosted AI (via the LiteLLM proxy) as a provider through Drupal's AI abstraction. It depends on the AI and AI
Provider LiteLLM modules, in the AI package.

Use it to add Dropsolid AI to AI-powered features. It is an AI/integration feature. Security/data handling: it
**sends prompts/content to the Dropsolid AI endpoint** (external egress — confirm acceptable), authenticated with
an **API key** (store as a **secret** via the AI/Key config, over HTTPS). It has no access-control role.
Configure the Dropsolid AI credentials and endpoint.

---

- Provide a Dropsolid AI provider.
- Enable Dropsolid's hosted AI.
- Use the LiteLLM proxy.
- Depend on AI and AI Provider LiteLLM.
- Serve AI features.
- Use Drupal's AI abstraction.
- Send prompts/content to Dropsolid (egress).
- Confirm the egress is acceptable.
- Store the API key as a secret (AI/Key, HTTPS).
- Have no access-control role.
- Configure the credentials/endpoint.
- Handle Dropsolid AI.
- Call Dropsolid.
- Configure the provider.
- Generate text.
- Handle the integration.
- Run Dropsolid AI.
- Use the provider.
- Secure the key.
- Provide Dropsolid AI.
