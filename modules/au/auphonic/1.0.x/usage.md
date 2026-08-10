<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Auphonic provides a core module for calling the Auphonic audio-post-production API via the AI module.

---

Auphonic **provides a core integration for the Auphonic audio-post-production service** — calling Auphonic's
API (audio leveling, noise reduction, transcription) through Drupal's AI abstraction. It depends on the AI module,
in the AI Provider package.

Use it to post-process audio via Auphonic. It is an AI/media integration. Security/data handling: it **sends audio
to the Auphonic API** (external egress — audio can be sensitive; confirm acceptable) and authenticates with an
**Auphonic API key** (store as a secret — env/Key — over HTTPS). It has no access-control role. Configure the
Auphonic credentials.

---

- Call the Auphonic audio API.
- Level/denoise/transcribe audio.
- Use Drupal's AI abstraction.
- Depend on the AI module.
- Send audio to Auphonic (egress).
- Confirm acceptable (audio can be sensitive).
- Store the Auphonic API key as a secret (env/Key, HTTPS).
- Have no access-control role.
- Configure the credentials.
- Handle audio processing.
- Process audio.
- Configure the provider.
- Run Auphonic.
- Handle the integration.
- Level audio.
- Configure Auphonic.
- Handle transcription.
- Denoise audio.
- Secure the key.
- Provide audio post-production.
