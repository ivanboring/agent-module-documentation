<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Quant Cloud AI Provider registers Quant Cloud's Dashboard API as an AI provider using OAuth authentication.

---

Quant Cloud AI Provider connects the AI module to the Quant Cloud platform (QuantCDN/QuantGov), providing chat and embeddings through Quant's Dashboard API. Authentication uses OAuth, and the provider exposes Quant's models wherever the AI module offers a provider choice.

OAuth client credentials are stored via the Key module and should be env-backed, never committed. Prompt/embedding content is sent to Quant's API. Depends on `ai` and `key`; supports Drupal 10.3+, 11, and 12.

---

- Add Quant Cloud as an AI provider.
- Provide chat via the Dashboard API.
- Provide embeddings via Quant.
- Authenticate with OAuth.
- Register a provider plugin.
- Send prompts/embeddings to Quant's API.
- Store credentials via the Key module.
- Back credentials with environment variables.
- Never commit secrets.
- Depend on `ai` and `key`.
- Support Drupal 10.3+, 11, and 12.
- Integrate with QuantCDN/QuantGov.
- Select Quant models in AI settings.
- Incur Quant platform cost.
- Support embeddings for search.
- Complement other providers.
- Keep secrets in env/Key.
- Route AI calls to Quant Cloud.
- Configure the Dashboard API endpoint.
- Provide chat + embeddings.
