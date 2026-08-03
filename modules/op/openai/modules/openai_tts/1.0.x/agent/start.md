# OpenAI Text to Speech (openai_tts) — agent index

Admin form to synthesize speech from text via the parent `openai.api` service. Thin UI
submodule; no config, no plugins. Parent: [../../../../1.0.x/agent/start.md](../../../../1.0.x/agent/start.md).

Key facts:
- Route `openai_tts.tts_form` → `/admin/config/openai/tts` (the `configure` route), form
  `\Drupal\openai_tts\Form\TextToSpeechForm`, permission **`access openai tts`**.
- Calls `openai.api->textToSpeech($model, $input, $voice, $response_format)`.
- Requires the parent's API key. No config/schema/plugins of its own.
