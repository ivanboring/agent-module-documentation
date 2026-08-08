<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
AI Textfield Translation adds AI-powered translation of text field values, backed by the Drupal AI module.

---

AI Textfield Translation provides AI-powered translation for text field values — letting editors
translate a field's content into another language using an AI model via the Drupal AI module. It depends
on the `ai` module and is configured at `ai_translate_textfield.settings_form`; it provides its own
permissions.

Use it to speed up translating field content with AI in the editing flow. The security/privacy-relevant
point is that content sent for translation is transmitted to the configured AI provider — store the
provider credentials as secrets (via the AI module / Key) and treat field content as leaving the site
(a data-handling consideration for sensitive content). It is a multilingual/content feature; configure
the AI provider and which fields can be translated.

---

- Translate text fields with AI.
- Use the Drupal AI module.
- Translate field content in the editor.
- Depend on the ai module.
- Configure at the settings form.
- Provide its own permissions.
- Store AI provider credentials as secrets.
- Treat content as leaving the site.
- Mind sensitive content sent to AI.
- Speed up field translation.
- Choose the AI provider.
- Translate into another language.
- Configure translatable fields.
- Handle credentials via Key.
- Assist multilingual content.
- Send field text to the AI model.
- Translate on demand.
- Support editorial translation.
- Add AI translation.
- Translate field values.
