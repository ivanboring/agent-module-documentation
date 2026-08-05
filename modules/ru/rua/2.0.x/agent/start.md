<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# RUA — Remove Uppercase Accents (rua) — agent index

Removes accents from **Greek** text rendered in uppercase. No dependencies. Package `Javascript`.
Version **2.0.2**. Core requirement `^10 || ^11 || ^12` (reaches into a major that does not exist
yet).

**The rule it encodes, which non-Greek developers do not know exists:** in modern Greek a lowercase
word carries a tonos on its stressed vowel — Ελλάδα — and the uppercase form does **not**:
ΕΛΛΑΔΑ, not ΕΛΛΆΔΑ. CSS `text-transform: uppercase` does not know that, so every uppercase heading,
button and menu item on a Greek site comes out visibly wrong to a Greek reader.

**Two notes:**
- **The transformation happens in the browser** (it is a JS module), so it does not change what is
  **stored**, what **search indexes**, or what a reader **copies out of the page** — the last
  arguably a virtue.
- **The more durable fix, where available, is correct `lang="el"`** and letting the browser apply
  its own casing rules. Modern browsers handle Greek uppercasing correctly when the language is
  declared. This module covers the cases where that is not enough — which on a Drupal site is
  common, because per-string `lang` is often absent.
