<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Huggingface Provider enables the Drupal AI module to use the Hugging Face Inference API, storing credentials via the Key module.

---

Huggingface Provider is a provider plugin for the Drupal AI module that routes AI operations through
the Hugging Face Inference API — giving access to the many models hosted on Hugging Face for tasks the
AI module abstracts (text generation, embeddings, etc.). It depends on the `ai` and `key` modules and
is configured at `ai_provider_huggingface.settings_form`, where the Hugging Face API token is stored as
a Key entity rather than plaintext config.

Use it to back the AI module with Hugging Face models. The security-relevant point is credential
handling: store the Hugging Face API token as a Key (environment or another secure provider), never as
plaintext configuration. Which capabilities are available depends on the AI module and the selected
Hugging Face models; this module supplies the provider binding. It provides its own permissions.

---

- Use Hugging Face models with the Drupal AI module.
- Route AI operations through Hugging Face.
- Access Hugging Face Inference API.
- Store the HF API token via the Key module.
- Provide text generation via Hugging Face.
- Provide embeddings via Hugging Face.
- Depend on the ai and key modules.
- Avoid plaintext credential config.
- Configure at the provider settings form.
- Select Hugging Face models for AI features.
- Bind Hugging Face as an AI provider.
- Keep the HF token secret.
- Provide its own permissions.
- Enable HF-backed AI operations.
- Use the Inference API from Drupal.
- Manage keys with a secure Key provider.
- Supply the provider for AI abstraction.
- Connect Drupal AI to Hugging Face.
- Handle authentication to Hugging Face.
- Choose HF per the AI module config.
