<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Varbase Landing Page (varbase_landing) — agent index

Landing Page content type built from stacked Paragraph components, for **Varbase**.
`core_version_requirement: ~11.4.0` — a single core minor.

Dependencies (info file): `varbase_bootstrap_paragraphs`, its `vbp_text_and_image` submodule, and
`varbase_seo`. Composer adds `varbase_media ~10.1.0`, `paragraphs_features ~2`,
`paragraphs_asymmetric_translation_widgets ~1`, `length_indicator ~1`,
`advanced_text_formatter ~3`, plus two Vardot tooling packages:
- **`vardot/module-installer-factory ~1`** — drives install-time module enabling;
- **`vardot/varbase-patches ~10.1.0`** — a composer **plugin**, which must be in
  `config.allow-plugins` or `composer require` aborts.

Key facts:
- Configuration and composition, not new code: `src/Hook/`, `recipes/default`,
  `varbase_landing.install`. No routes, no permissions, no services.
- The components themselves come from `varbase_bootstrap_paragraphs` — debug component behaviour
  there, not here.
- `paragraphs_asymmetric_translation_widgets` is deliberate: each language's landing page may
  have a **different component structure**, not just translated text. Relevant when planning a
  multilingual site's editorial workflow.
- Pairs with `varbase_seo` (documented in wave 55), so landing pages arrive with SEO fields
  configured.
