# OpenAI ChatGPT Explorer (openai_chatgpt) — agent index

Admin playground form for the OpenAI Chat endpoint, over the parent `openai.api` service. Thin
UI submodule; no config, no plugins. Parent: [../../../../1.0.x/agent/start.md](../../../../1.0.x/agent/start.md).

Key facts:
- Route `openai_chatgpt.chat_form` → `/admin/config/openai/chatgpt` (the `configure` route),
  form `\Drupal\openai_chatgpt\Form\ChatGptForm`, permission **`access openai chatgpt`**.
- Calls `openai.api->chat($model, $messages, $temperature, $max_tokens)`.
- Requires the parent's API key. No config/schema/plugins of its own.
