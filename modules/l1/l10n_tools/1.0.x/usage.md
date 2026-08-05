<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
L10n Tools removes obsolete interface-translation rows — strings from modules that are gone, translations for languages no longer enabled, entries left behind by long-uninstalled code.

---

Drupal's interface translation tables accumulate and never shrink. `locales_source` gains a row for every translatable string every module has ever declared, `locales_target` a row per translation of each, and `locales_location` records where each string was found. Uninstalling a module does not remove its strings; disabling a language does not remove its translations. On a long-lived multilingual site with a history of modules that came and went, these tables reach hundreds of thousands of rows, and the cost is real: every database export and import carries them, the translation administration interface pages through them, and cache warming and translation rebuilds get slower in proportion. Version **1.0.3** on `^9 || ^10 || ^11`, depending on core `locale`, with an `access l10n_tools form` permission correctly marked `restrict access: TRUE` — appropriate, since the form deletes data. Two things before running it. **Custom translations are not recoverable from anywhere**: a string translated by hand in the UI, rather than imported from a `.po` file, exists only in the database, so a cleanup that decides it is orphaned deletes work that cannot be re-downloaded — take a database backup first, and prefer a dry run if the tool offers one. And **"orphaned" is a judgement about the current codebase**: a module that is temporarily uninstalled, or one enabled only on another environment, has strings that look obsolete here and are not.

---

- Shrink oversized locale tables.
- Remove strings from uninstalled modules.
- Delete translations for disabled languages.
- Speed up database exports.
- Clean up after a long migration.
- Reduce translation table size.
- Improve translation UI performance.
- Tidy an inherited multilingual site.
- Remove expired translation entries.
- Reduce backup size.
- Speed up cache rebuilds.
- Clean up before a major upgrade.
- Remove obsolete string locations.
- Audit translation table growth.
- Prepare a site for a language removal.
- Reduce import time for developers.
- Clean up test translations.
- Maintain a long-lived multilingual site.
