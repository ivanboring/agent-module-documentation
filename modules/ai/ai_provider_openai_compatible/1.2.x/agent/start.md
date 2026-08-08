<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# OpenAI Compatible Provider — agent index

AI **provider for any OpenAI-compatible API endpoint** (DeepSeek/self-hosted/local LLMs — configurable base
URL). Depends on `ai`. Config at `ai_provider_openai_compatible.settings_form`. Version **1.2.1**. Core
`^10.3||^11`.

**Security:** store the API key as a **secret**; the **base URL is admin-configured** — point at trusted
endpoints + **HTTPS**; prompts sent leave the site (self-host keeps data in-house). No access role.
