<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
AI Audio Generator turns node text into MP3 audio via AI TTS, chunking long content and using the Batch API.

---

AI Audio Generator produces spoken-audio MP3 files from node content using an AI text-to-speech provider. It chunks long text and runs generation through Drupal's Batch API so large articles don't time out, storing the result as a managed file/media item that can be attached to the node — useful for accessibility (listen instead of read) and audio versions of articles.

It provides admin permissions for voice settings and a pronunciation dictionary. TTS calls go to an AI provider using the site's key (stored via the Key module), so audio generation incurs provider cost — restrict who can trigger it. Depends on core `node`, `media`, `file`, plus `ai` and `key`.

---

- Generate MP3 audio from nodes.
- Use AI text-to-speech.
- Chunk long content for TTS.
- Run generation via the Batch API.
- Avoid timeouts on large articles.
- Store output as a managed file/media.
- Support accessibility (listen to content).
- Provide voice settings (admin permission).
- Provide a pronunciation dictionary.
- Call an AI provider using the site's key.
- Store the key via the Key module.
- Incur provider cost per generation.
- Restrict who can trigger it.
- Depend on core `node`, `media`, `file`.
- Depend on `ai` and `key`.
- Support Drupal 10 and 11.
- Attach audio versions to articles.
- Configure voices per language.
- Batch large content safely.
- Deliver audio content from text.
