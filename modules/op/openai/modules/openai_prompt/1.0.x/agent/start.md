# OpenAI Prompt Completion Explorer (openai_prompt) — agent index

Admin single-prompt playground over the parent `openai.api` service. Thin UI submodule; no
config, no plugins. Parent: [../../../../1.0.x/agent/start.md](../../../../1.0.x/agent/start.md).

Key facts:
- Route `openai_prompt.prompt_form` → `/admin/config/openai/openai-prompt` (the `configure`
  route), form `\Drupal\openai_prompt\Form\PromptForm`, permission **`access openai prompt`**.
- Calls `openai.api->completions()` / `chat()` depending on the chosen model.
- Requires the parent's API key. No config/schema/plugins of its own.
