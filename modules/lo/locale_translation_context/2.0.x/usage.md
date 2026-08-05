<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Locale Translation Context lets the interface-translation screen be filtered by a string's translation context, which core's interface does not expose.

---

Gettext contexts exist because one English word is often several different words in another language. "Order" is a sequence and a purchase; "Post" is a verb, a noun, and a piece of mail; "Right" is a direction and an entitlement. Drupal supports this properly — `t('Order', [], ['context' => 'Commerce order'])` — and then gives the translator no way to see or filter by that context in the translation UI, so a translator searching for "Order" gets every occurrence with no indication of which is which, and picks one meaning for all of them. The result is a site that reads oddly in one language for reasons nobody can find, because the English source looks correct. Adding a context filter turns an unanswerable question into a normal one: show me the strings in this context, translate them together, move on. Version **2.0.1** on core `^10.1 || ^11`, depending on core `locale`. Two related notes. **Context is set by the developer, not the translator**, so a site whose custom code calls `t()` without contexts on ambiguous words cannot be fixed from this end — the filter exposes what exists rather than creating it, and adding a context to an existing string makes it a **new** string that needs translating again. And **`.po` files carry contexts** as `msgctxt`, so an import or export round-trip preserves them, which makes this useful in a workflow where translation happens outside Drupal and comes back as files.

---

- Filter translations by context.
- Disambiguate a word with several meanings.
- Translate "Order" correctly per context.
- Find strings from one module's context.
- Improve translation quality.
- Help a translator see disambiguation.
- Review translations context by context.
- Diagnose an odd-sounding translation.
- Translate Commerce strings together.
- Support a professional translation workflow.
- Filter a large string list usefully.
- Find untranslated strings in a context.
- Review a module's translations.
- Improve a multilingual site's language quality.
- Support a translation review process.
- Locate context-specific strings.
- Work through translations systematically.
- Support a .po round-trip workflow.
