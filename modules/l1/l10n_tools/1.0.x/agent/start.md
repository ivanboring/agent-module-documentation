<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# L10n Tools (l10n_tools) — agent index

Removes obsolete interface-translation rows — strings from uninstalled modules, translations for
disabled languages, orphaned entries. Depends on core `locale`. Form behind
**`access l10n_tools form`** (`restrict access: TRUE` — appropriate, it deletes data).
Version **1.0.3**. Core requirement `^9 || ^10 || ^11`.

**Why the tables grow and never shrink:** `locales_source` gains a row per translatable string any
module has ever declared, `locales_target` one per translation, `locales_location` one per place a
string was found. **Uninstalling a module does not remove its strings; disabling a language does not
remove its translations.** On a long-lived site these reach hundreds of thousands of rows, and the
cost is real — every export and import carries them, the translation UI pages through them,
rebuilds slow in proportion.

**Two things before running it:**
1. **Custom translations are not recoverable from anywhere.** A string translated by hand in the UI
   exists **only** in the database — a cleanup that judges it orphaned deletes work that cannot be
   re-downloaded. **Back up first**, and prefer a dry run if offered.
2. **"Orphaned" is a judgement about the current codebase.** A temporarily uninstalled module, or
   one enabled only on another environment, has strings that look obsolete here and are not.
