<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
NanoBanana Provider registers Google Gemini image-generation models as an AI provider.

---

NanoBanana Provider is an AI provider plugin exposing Google Gemini's image-generation models (Gemini 2.5 Flash Image, Gemini 3 Pro Image) to the Drupal AI module — so modules like NanoBanana Editor can generate/manipulate images using Gemini through the AI provider abstraction.

The Google API key is stored via the Key module (env-backed) and image generation sends prompts/images to Google (cost + data egress). Depends on `ai` and `key`; supports Drupal 10.3+ and 11.

---

- Add Gemini image models as an AI provider.
- Expose Gemini 2.5 Flash Image.
- Expose Gemini 3 Pro Image.
- Support image generation.
- Serve modules like NanoBanana Editor.
- Use the AI provider abstraction.
- Store the API key via Key (env-backed).
- Send prompts/images to Google (cost/egress).
- Depend on `ai` and `key`.
- Support Drupal 10.3+ and 11.
- Generate images via Gemini.
- Register a provider plugin.
- Configure models
- Keep the key secure
- Integrate Google Gemini.
- Support AI imaging.
- Provide image AI.
- Route image calls to Gemini
