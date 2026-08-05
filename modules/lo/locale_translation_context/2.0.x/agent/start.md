<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Locale Translation Context (locale_translation_context) — agent index

Adds **context filtering** to the interface-translation screen. Depends on core `locale`.
Version **2.0.1**. Core requirement `^10.1 || ^11`.

**Why contexts exist and why the gap matters.** One English word is often several words in another
language — *Order* (sequence / purchase), *Post* (verb / noun / mail), *Right* (direction /
entitlement). Drupal supports this properly:
`t('Order', [], ['context' => 'Commerce order'])`. It then gives the **translator no way to see or
filter by that context**, so a search for "Order" returns every occurrence undifferentiated and one
meaning gets picked for all of them. The site then reads oddly in one language for reasons nobody
can find, because the English source looks correct.

**Two related notes:**
- **Context is set by the developer, not the translator.** The filter exposes what exists rather
  than creating it — and **adding a context to an existing string makes it a new string** needing
  translation again.
- **`.po` files carry contexts** as `msgctxt`, so import/export round-trips preserve them — useful
  where translation happens outside Drupal and comes back as files.
