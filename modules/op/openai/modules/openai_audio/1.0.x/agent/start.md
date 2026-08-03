# OpenAI Speech to Text (openai_audio) — agent index

Admin form to transcribe/translate audio via Whisper, over the parent `openai.api` service.
Thin UI submodule; no config, no plugins. Parent: [../../../../1.0.x/agent/start.md](../../../../1.0.x/agent/start.md).

Key facts:
- Route `openai_audio.audio_form` → `/admin/config/openai/audio` (the `configure` route),
  form `\Drupal\openai_audio\Form\AudioForm`, permission **`access openai audio`**.
- Calls `openai.api->speechToText($model, $file, $task, $temperature, $response_format)`
  (`$task` default `transcribe`; also `translate`).
- Requires the parent's `openai.settings` API key. No config/schema/plugins of its own.
