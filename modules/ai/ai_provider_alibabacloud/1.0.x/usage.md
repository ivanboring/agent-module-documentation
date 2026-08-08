<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Alibaba Cloud Model Studio AI Provider integrates Alibaba Cloud Model Studio (Qwen models) as a provider for the Drupal AI module.

---

Alibaba Cloud Model Studio AI Provider is a provider plugin for the Drupal AI module that enables using
Alibaba Cloud Model Studio — specifically the Qwen family of models — as the backend for AI operations
(chat/completion, embeddings, etc.). It depends on the `ai` module (and the Key module for credentials)
and is configured at `ai_provider_alibabacloud.settings_form`, where the API key is stored as a Key entity
and sent as a Bearer token to Alibaba Cloud (over TLS — verification is not disabled).

Use it to back the AI module with Alibaba Cloud Qwen models. The security-relevant point is credential
handling: the API key is stored via the Key module (environment or another secure provider) — never
plaintext config — and requests use HTTPS with normal certificate verification. Note that content sent for
AI operations is transmitted to Alibaba Cloud (a data-handling/residency consideration for sensitive
content). Configure the provider (key, region, model).

---

- Use Alibaba Cloud Qwen models via the AI module.
- Route AI operations through Alibaba Cloud.
- Provide chat/completion via Qwen.
- Store the API key via the Key module.
- Depend on the ai module.
- Configure at the provider settings form.
- Send the key as a Bearer token over TLS.
- Avoid plaintext credential config.
- Bind Alibaba Cloud as an AI provider.
- Select Qwen models.
- Keep the API key secret.
- Mind data sent to Alibaba Cloud.
- Consider data residency.
- Not disable TLS (verified).
- Enable Alibaba-backed AI.
- Configure key/region/model.
- Connect Drupal AI to Alibaba Cloud.
- Handle authentication securely.
- Provide the provider binding.
- Use Model Studio.
