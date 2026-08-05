<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Translatable config pages provides a fielded settings entity whose values can be **translated** — the pattern of "config pages" (a settings form built from fields) with multilingual support built in.

---

Sites routinely need editable global values that are not content: a contact address in the footer, opening hours, a promotional strapline, social links. A custom settings form means code for every field; the config-pages pattern instead makes those values a fielded entity a site builder can define. What this module adds is the multilingual dimension: because the values are a **content** entity with `content_translation` support rather than configuration, each language gets its own translation through the normal translation UI, which is precisely what plain configuration cannot do without config translation gymnastics. `TranslatableConfigPagesManager`, an access control handler, list builders for both the pages and their types, and a `src/Routing` namespace provide the machinery. Three permissions divide it sensibly: `administer translatable config pages types` (marked `restrict access: true`) to define the types, then separate `manage` and `view` permissions for the pages themselves — so an editor can maintain the values without being able to change the structure. Dependencies are core `content_translation` and `language`, with a wide core range.

---

- Translate a site's footer contact details.
- Maintain opening hours per language.
- Give editors global values to edit.
- Translate a promotional strapline.
- Avoid a custom settings form per value.
- Keep global values out of code.
- Let a site builder define settings fields.
- Translate social media links per market.
- Separate structure from values by permission.
- Maintain per-language legal text.
- Provide translated values to templates.
- Manage a language-specific phone number.
- Avoid config translation for editable values.
- Give a multilingual site editable globals.
- Model a settings page as fields.
- Translate a call-to-action label.
- Keep values editable without deployment.
- Support market-specific site details.
