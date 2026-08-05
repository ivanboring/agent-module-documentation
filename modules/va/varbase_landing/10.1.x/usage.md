<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Varbase Landing Page provides the Landing Page content type for a Varbase site — a page built from stacked, visually distinct Paragraph components rather than a single body field.

---

Like the rest of the Varbase family, this is configuration and composition rather than new code: `src/Hook` holds the handful of hook implementations, `recipes/default` the shipped recipe, and `varbase_landing.install` the install-time work, with the actual components coming from `varbase_bootstrap_paragraphs` — the module's `dependencies` name both that and its `vbp_text_and_image` submodule, plus `varbase_seo`, so a landing page arrives with SEO fields already configured. Composer pulls in a wider set including `varbase_media`, `paragraphs_features`, `paragraphs_asymmetric_translation_widgets` (asymmetric translation being the pattern where each language's landing page can have a different component structure), `length_indicator` and `advanced_text_formatter`. It also requires `vardot/module-installer-factory`, the Varbase helper that drives install-time module enabling, and `vardot/varbase-patches`, whose composer plugin must be in `config.allow-plugins`. `core_version_requirement` is pinned to `~11.4.0` — a single core minor, consistent with the family.

---

- Give editors a stacked-component landing page.
- Build a marketing page from paragraph components.
- Add a text-and-image component to a page.
- Keep landing pages visually distinct from articles.
- Get SEO fields configured on landing pages.
- Translate a landing page with a different structure.
- Reuse Varbase's Bootstrap paragraph components.
- Provide a campaign page template.
- Constrain headline length during editing.
- Build a homepage from components.
- Standardise landing pages across a Varbase estate.
- Add a component-based page type without custom work.
- Support asymmetric translation of components.
- Give marketing control over page structure.
- Adopt Varbase's landing page conventions.
- Ship a landing page recipe with a site.
- Layer landing pages onto an existing Varbase site.
- Keep landing page config exportable.
