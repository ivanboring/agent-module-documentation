<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Google Vertex is an AI provider plugin that lets the Drupal AI module use Google Vertex (Vertex AI Studio) models, storing credentials via the Key module.

---

Google Vertex (ai_provider_google_vertex) is a provider plugin for the Drupal AI module that enables
using Google Vertex AI (Vertex AI Studio) as the backend for AI operations — chat/completion,
embeddings and other capabilities the AI module abstracts. It depends on the `ai` module and the `key`
module, and its settings form (`ai_provider_google_vertex.settings_form`) configures the Google
credentials as a Key entity rather than plaintext config.

Use it to route the AI module's operations through Google Vertex. The security-relevant point is
credential handling: because it integrates the Key module, store the Vertex service-account
credentials as a Key (environment or another secure provider), never as plaintext configuration.
Which AI features are available depends on the AI module and the configured Vertex models; this module
supplies the provider binding.

---

- Use Google Vertex AI with the Drupal AI module.
- Route AI operations through Vertex.
- Configure Vertex credentials via the Key module.
- Store service-account keys as a Key entity.
- Provide chat/completion via Vertex.
- Provide embeddings via Vertex.
- Depend on the ai and key modules.
- Avoid plaintext credential config.
- Bind Vertex as an AI provider.
- Select Vertex models for AI features.
- Configure at the provider settings form.
- Integrate Vertex AI Studio.
- Keep Google credentials secret.
- Supply the provider for AI abstraction.
- Use Vertex for AI-module tasks.
- Manage keys with a secure Key provider.
- Enable Google-backed AI operations.
- Connect Drupal AI to Google Cloud.
- Handle authentication to Vertex.
- Choose Vertex per the AI module config.
