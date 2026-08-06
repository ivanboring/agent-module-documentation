<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity Translation Unified Form (entity_translation_unified_form) — agent index

Puts **all languages' translatable fields in one form** instead of one form per language.
Configure via `language.content_settings_page`. Version **2.0.14**. Core `^10 || ^11`.
Depends on `content_translation`.

Solves a real editorial problem — Drupal's per-language forms mean translating in two browser tabs,
and a field added later gets missed in some languages.

**Two things to check on a real content model:** saving is **one operation across several
translations**, so work out what happens when one language fails validation and what a moderation
transition means for the set; and the form gets **large** — thirty translatable fields × four
languages is 120 widgets on one page. Past a certain size the per-language form it replaces looks
reasonable again.