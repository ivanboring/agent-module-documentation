<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
AI Content Translation translates content entities using OpenAI via core's content-translation system.

---

AI Content Translation adds machine translation of content entities using OpenAI, integrating with Drupal's core content-translation workflow so editors can auto-generate a translation of a node/field set and then review/refine it. It speeds up multilingual content production while keeping human review in the loop.

Translation requests send content to OpenAI using the configured key, so translated (and source) text leaves the site to a third-party API — consider data-sensitivity and cost. Gated by `administer ai content translation`; depends on core `content_translation` and `config`.

---

- Translate content with AI.
- Use OpenAI for translation.
- Integrate with core content_translation.
- Auto-generate entity translations.
- Keep human review in the loop.
- Speed up multilingual production.
- Send content to OpenAI (data leaves the site).
- Incur API cost per translation.
- Gate with `administer ai content translation`.
- Depend on core `content_translation`.
- Depend on core `config`.
- Support Drupal 10 and 11.
- Translate fields per language.
- Review AI translations before publishing.
- Configure the OpenAI key securely.
- Support multilingual sites.
- Reduce manual translation effort.
- Consider data sensitivity.
- Complement core translation UI.
- Produce draft translations.
