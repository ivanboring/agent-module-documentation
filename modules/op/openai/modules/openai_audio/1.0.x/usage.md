OpenAI Speech to Text adds an admin form (`/admin/config/openai/audio`) that uploads an audio file and returns a transcription (or translation) via OpenAI's Whisper audio endpoint, using the core `openai.api` service.

---

This is a thin UI submodule over OpenAI Core. It registers one route `openai_audio.audio_form`
(the module's `configure` target) rendering `AudioForm`, guarded by the module's own
permission `access openai audio`. The form takes an audio file and options and calls
`openai.api->speechToText($model, $file, $task, $temperature, $response_format)` (Whisper),
returning the transcribed/translated text. It stores no config of its own and defines no
plugins; it is an explorer/utility for experimenting with the audio endpoint. Requires the
OpenAI API key to be configured on the parent module.

---

- Transcribe an uploaded audio file to text in the Drupal admin.
- Translate spoken audio into English text via Whisper.
- Prototype the OpenAI audio endpoint before wiring it into custom code.
- Convert meeting/interview recordings into text for editing.
- Generate a first-draft transcript for a podcast episode.
- Test different Whisper models and response formats.
- Produce captions/subtitles source text from audio.
- Give editors a self-service transcription tool behind a permission.
- Check transcription quality for a given audio sample.
- Extract quotes from a recorded talk.
- Turn voice notes into written content.
- Evaluate temperature settings' effect on transcription.
- Provide accessibility text alternatives for audio media.
- Draft show-notes from an audio file.
- Verify API connectivity for the audio endpoint.
- Gate transcription access with the `access openai audio` permission.
