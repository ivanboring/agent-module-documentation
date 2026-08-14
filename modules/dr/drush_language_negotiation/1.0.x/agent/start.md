<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Drush language negotiation (drush_language_negotiation) — agent index
**Forces the site default language for CLI/Drush runs via a language-negotiation plugin.**

- **Version:** 1.0.x  •  **Core:** ^8 || ^9 || ^10 || ^11  •  **Requires:** core language module
- **Plugin:** `@LanguageNegotiation` id `language-drush` (weight -99); `getLangcode()` returns the default langcode when `PHP_SAPI==='cli'`, else NULL
- **Setup:** enable the method and raise its priority in language detection settings
- **Security:** no routes/permissions/services; CLI-only negotiation plugin. No security findings.