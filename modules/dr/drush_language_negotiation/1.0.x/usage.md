<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Drush language negotiation works around a Drush bug where CLI runs resolve the wrong language, by forcing the site's default language whenever code runs under the CLI.

---

It ships a single `LanguageNegotiation` plugin (`language-drush`, weight -99) whose `getLangcode()` returns the default language id when `PHP_SAPI === 'cli'`, and NULL otherwise (so web requests are unaffected). After enabling, add and prioritise the "Drush Language Switching" method on the language detection/selection settings so it wins for CLI. This makes Drush operations (imports, cron, content generation, translations) use the intended default language instead of falling back to English.

No routes, permissions, services or config of its own — purely a negotiation plugin. No security surface.

---
- Force the site default language during Drush commands
- Fix wrong-language output in Drush cron
- Ensure content generated via Drush uses the default language
- Keep web requests unaffected by the CLI override
- Prioritise the Drush negotiation method in language settings
- Avoid English fallback in multilingual CLI operations
- Run migrations under the correct default language
- Stabilise translation-related Drush tasks
- Give the negotiation method a very high priority (weight -99)
- Leave HTTP/browser requests using their normal negotiation
- Return NULL for non-CLI so it never affects the front end
- Correct wrong-language string translations in CLI output
- Ensure scheduled Drush jobs use the default language
- Apply the default language to programmatic content builds
- Avoid per-command --uri/language workarounds
- Keep multilingual CLI behaviour predictable