<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Deepgram provides Speech-to-Text and Text-to-Speech via the AI module.

---

Deepgram provides a **Deepgram AI provider** for the AI module — offering Speech-to-Text (transcription) and
Text-to-Speech (voice synthesis) via Deepgram's API, usable through Drupal's AI abstraction. It depends on the
AI and Key modules, in the AI Providers package.

Use it to add Deepgram STT/TTS to AI-powered features. It is an AI/integration feature and it handles secrets
**correctly**: it depends on the **Key** module, so the Deepgram **API key** is stored as a Key (env/secret
provider) rather than plain config. Data-handling: audio/text is **sent to Deepgram** (external egress — confirm
acceptable for the content, e.g. voice recordings may be sensitive), over HTTPS. It has no access-control role.
Configure the Deepgram Key and provider.

---

- Provide a Deepgram AI provider.
- Offer Speech-to-Text.
- Offer Text-to-Speech.
- Depend on the AI and Key modules.
- Serve AI features.
- Use Deepgram's API.
- Store the API key via the Key module (correct).
- Send audio/text to Deepgram (egress).
- Confirm the egress is acceptable (voice can be sensitive).
- Use HTTPS.
- Have no access-control role.
- Configure the Key and provider.
- Handle Deepgram.
- Transcribe audio.
- Configure the provider.
- Synthesize speech.
- Handle the integration.
- Call Deepgram.
- Secure the key (Key module).
- Provide Deepgram STT/TTS.
