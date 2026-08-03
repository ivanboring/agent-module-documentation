# OpenAI DALL·E (openai_dalle) — agent index

Admin form to generate images from a prompt via the parent `openai.api` service. Thin UI
submodule; no config, no plugins. Parent: [../../../../1.0.x/agent/start.md](../../../../1.0.x/agent/start.md).

Key facts:
- Route `openai_dalle.dalle_form` → `/admin/config/openai/dalle` (the `configure` route), form
  `\Drupal\openai_dalle\Form\DalleForm`, permission **`access openai dalle`**.
- Calls `openai.api->images($model, $prompt, $size, $response_format, $quality, $style)`.
- Requires the parent's API key. No config/schema/plugins of its own.
