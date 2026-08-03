OpenAI Text to Speech adds an admin form (`/admin/config/openai/tts`) that turns entered text into spoken audio via OpenAI's TTS endpoint, using the core `openai.api` service.

---

A thin UI submodule over OpenAI Core. It registers route `openai_tts.tts_form` (its
`configure` target) rendering `TextToSpeechForm`, guarded by the module's own permission
`access openai tts`. The form takes text, a voice, model, and response format and calls
`openai.api->textToSpeech($model, $input, $voice, $response_format)`, returning audio bytes to
download/play. It defines no config, schema, or plugins; it is an explorer for the TTS
endpoint. Requires the OpenAI API key on the parent module.

---

- Convert admin-entered text into spoken audio in Drupal.
- Preview different OpenAI voices for a piece of copy.
- Generate an audio version of an article or announcement.
- Prototype the TTS endpoint before wiring it into custom code.
- Produce voiceover audio for a video or slideshow.
- Create accessible audio alternatives for text content.
- Test different response formats (mp3, etc.) for TTS output.
- Draft IVR/phone prompts as audio.
- Generate spoken notifications or alerts.
- Compare voice/model combinations for tone.
- Produce narration for e-learning content.
- Give editors a self-service TTS tool behind a permission.
- Turn a short marketing blurb into an audio clip.
- Validate API connectivity for the TTS endpoint.
- Create pronunciation samples.
- Gate TTS access with the `access openai tts` permission.
