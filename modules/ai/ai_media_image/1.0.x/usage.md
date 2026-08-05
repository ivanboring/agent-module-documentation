<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
AI Media Image adds a "Generate Image with AI" option to the media image creation form, turning a text prompt into a stored media entity through whichever text-to-image provider the AI module is configured with.

---

The module sits on Drupal's **AI** module, which supplies the provider abstraction, so the choice of model — and the API key that goes with it — is configured once in AI rather than here. This module contributes the media-side integration: a settings form at `/admin/config/ai/ai_media_image` (gated by AI's own `administer ai` permission) and a single permission of its own, **`generate image with ai`**, which decides who sees the generate option on media forms. That separation is right: choosing the model is an administrative decision, using it is an editorial one, and the latter has a per-use cost. Three things belong in any recommendation. Generated images cost money per call, so `generate image with ai` is a spending permission as much as an editorial one. Provider terms differ on **who owns generated output** and whether prompts are retained for training — a question for legal, not for the module. And generated images arrive with no meaningful alt text, so the accessibility obligation is unchanged and arguably harder, since there is no photographer or source to describe. The release is **1.0.0-alpha4**, and core requirement is `^10.2 || ^11`.

---

- Generate an illustration from a text prompt.
- Create placeholder imagery for a draft page.
- Produce a hero image without stock photography.
- Give editors imagery for a concept with no photo.
- Generate an image directly into the media library.
- Restrict image generation to specific roles.
- Reuse the site's configured AI provider.
- Illustrate a blog post quickly.
- Create consistent iconography from prompts.
- Avoid stock photo licensing for internal pages.
- Prototype a design with generated imagery.
- Generate social sharing images.
- Produce imagery for a campaign concept.
- Fill a media library during a build.
- Iterate on an image by changing the prompt.
- Support an editorial team without a designer.
- Generate images matching a written brief.
- Keep generated images as normal media entities.
