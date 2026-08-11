<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
xAI Provider registers xAI's API as a provider for the Drupal AI module.

---

xAI Provider is an AI provider plugin that makes xAI's models (Grok family) available to the Drupal AI module for chat and related operations. Once configured, xAI models are selectable wherever the AI module offers a provider choice.

The xAI API key is stored via the Key module (a dependency) and should be env-backed, never committed. Prompt content is sent to xAI's API. Depends on `ai` and `key`; supports Drupal 10.3+ and 11.

---

- Add xAI as an AI provider.
- Use xAI (Grok) models.
- Provide chat operations.
- Register a provider plugin.
- Make xAI models selectable in AI settings.
- Send prompts to the xAI API.
- Store the key via the Key module.
- Back the key with an environment variable.
- Never commit the key.
- Depend on `ai` and `key`.
- Support Drupal 10.3+ and 11.
- Integrate with the AI provider abstraction.
- Incur xAI API cost.
- Configure models per site.
- Complement other providers.
- Keep secrets in env/Key.
- Select xAI where AI is used.
- Support multi-provider setups.
- Route AI calls to xAI.
- Provide Grok-backed generation.
