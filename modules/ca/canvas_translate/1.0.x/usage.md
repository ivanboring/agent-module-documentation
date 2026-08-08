<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Canvas Translate provides in-house translation of Drupal Canvas content as a Canvas page extension, optionally using the AI module.

---

Canvas Translate provides translation of Drupal Canvas content directly within the Canvas experience —
delivered as a Canvas page extension so editors can translate content in place. It integrates core
Content Translation and Language, and optionally the AI module (via a `canvas_translate_ai` submodule)
for AI-assisted translation. It depends on Canvas (>=1.8), content_translation and language; it provides
its own permissions.

Use it on Canvas-based sites that need multilingual content translated in the authoring flow. If the AI
submodule is used, translation content is sent to the configured AI provider — store provider
credentials as secrets and treat content sent for AI translation as leaving the site (data-handling
consideration). It is a multilingual/authoring feature; translation respects content-translation access.

---

- Translate Canvas content in place.
- Deliver translation as a Canvas extension.
- Integrate content_translation and language.
- Optionally use AI translation.
- Use the canvas_translate_ai submodule.
- Depend on canvas (>=1.8).
- Provide its own permissions.
- Translate in the authoring flow.
- Store AI provider credentials as secrets.
- Treat AI-translated content as leaving the site.
- Support multilingual Canvas.
- Respect content-translation access.
- Translate pages editorially.
- Handle language variants.
- Assist translation with AI.
- Configure the translation extension.
- Manage translations in Canvas.
- Translate content world-class in-house.
- Add language versions.
- Integrate Canvas multilingual.
