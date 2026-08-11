<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Baidu Provider registers Baidu's LLM API as a provider for the Drupal AI module.

---

Baidu Provider is an AI provider plugin that lets the Drupal AI module use Baidu's large-language-model API for chat and related operations. Once configured, Baidu models become selectable wherever the AI module offers a provider choice.

The Baidu API credential is stored via the Key module (a dependency) and should be backed by an environment variable, never committed. Requests send prompt content to Baidu's API. Depends on `ai` (>=1.0-beta) and `key`; supports Drupal 10 and 11.

---

- Add Baidu as an AI provider.
- Use Baidu LLMs for chat.
- Register a provider plugin.
- Make Baidu models selectable in AI settings.
- Send prompts to Baidu's API.
- Store the credential via the Key module.
- Back the key with an environment variable.
- Never commit the credential.
- Depend on `ai` (>=1.0-beta).
- Depend on `key`.
- Support Drupal 10 and 11.
- Integrate with the AI provider abstraction.
- Incur Baidu API cost.
- Configure models per site.
- Provide chat operations.
- Complement other AI providers.
- Select Baidu where AI is used.
- Keep secrets in env/Key.
- Support multi-provider setups.
- Route AI calls to Baidu.
