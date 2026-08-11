<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Siliconflow Provider registers the SiliconFlow inference API as a provider for the AI module.

---

Siliconflow Provider adds the SiliconFlow inference API as an AI provider, making SiliconFlow-hosted models available for chat and related AI operations within Drupal. It includes an autocomplete helper for browsing the SiliconFlow model list when configuring the provider.

The API credential is stored via the Key module and should be env-backed. Prompt content is sent to SiliconFlow's API. A `autocomplete siliconflow model list` permission gates the model-list autocomplete. Depends on `ai` and `key`; supports Drupal 10.2+ and 11.

---

- Add SiliconFlow as an AI provider.
- Use SiliconFlow-hosted models.
- Provide chat operations.
- Autocomplete the model list.
- Gate autocomplete with a dedicated permission.
- Register a provider plugin.
- Send prompts to the SiliconFlow API.
- Store the credential via the Key module.
- Back the key with an environment variable.
- Never commit the credential.
- Depend on `ai` and `key`.
- Support Drupal 10.2+ and 11.
- Integrate with the AI provider abstraction.
- Select SiliconFlow in AI settings.
- Incur SiliconFlow API cost.
- Browse available models.
- Complement other providers.
- Keep secrets in env/Key.
- Configure models per site.
- Route AI calls to SiliconFlow.
