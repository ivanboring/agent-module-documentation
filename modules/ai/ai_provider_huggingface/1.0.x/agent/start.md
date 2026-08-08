<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Huggingface Provider — agent index

**AI provider plugin** letting the Drupal **AI module** use the **Hugging Face Inference API**. Depends
on `ai`, `key`. Config at `ai_provider_huggingface.settings_form`. Version **1.0.0-rc1**. Core
`^10.2||^11`.

**Credentials via the Key module** — store the HF API token as a Key (env/secure provider), never
plaintext. Provides permissions.
