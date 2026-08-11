<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Alt Text Generator produces AI-generated alternative text for image files.

---

Alt Text Generator uses an AI vision model to generate descriptive alt text for images, helping editors provide accessible descriptions without writing each one by hand. It exposes a POST endpoint that, given a file id and language, returns generated alt text an editor can accept into the image field.

The generate endpoint is gated by `access content` and calls the AI provider using the site's key, so any role with basic content access can drive AI generation cost — restrict content access appropriately and monitor spend. Settings are gated by `administer site configuration`. Depends on core `image`; supports Drupal 10 and 11.

---

- Generate alt text with AI.
- Use an AI vision model.
- Describe images accessibly.
- Expose a POST generate endpoint.
- Take a file id and language.
- Return alt text for a field.
- Help editors avoid manual alt text.
- Gate generation with `access content`.
- Call the AI provider on the site's key.
- Incur AI cost per generation.
- Monitor provider spend.
- Gate settings with `administer site configuration`.
- Depend on core `image`.
- Support Drupal 10 and 11.
- Improve image accessibility.
- Populate alt attributes.
- Support multiple languages.
- Restrict content access appropriately.
- Accept generated text into fields.
- Reduce accessibility effort.
