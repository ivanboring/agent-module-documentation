<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Field Formatter Template (fft) — agent index

Selects a **Twig template per field formatter**, discovered from a configured directory.
Version **3.0.1**. Core `^9 || ^10 || ^11`. Settings at `/admin/config/content/fft`
(`administer site configuration`). Submodule **`vff`** (Views Formatter) does the same for Views.

Discovery: scan the directory for `*.html.twig`, keep files whose contents match
`{# Template Name: … #}` **and** whose filename starts with the expected prefix. Optional
`{# Settings: … #}` block carries per-template settings.

**Template directory — the sharp edge (verified):**
- The setting is a bare `textfield` with **no `validateForm()`**. Nothing rejects a path inside
  `public://` or writable by PHP.
- Default is **`sites/all/formatter` — a Drupal 7 path that does not exist on D8+**, so every site
  must change it, with no guidance. Verified: pointed at public files, a planted template was
  discovered and offered silently.
- **Impact is bounded by core, not by this module.** Drupal 11's Twig sandbox refuses
  `{{ ["id"]|map("system") }}` ("must be a Closure in sandbox mode"), so **no RCE**. A planted
  template *can* emit unescaped `<script>` → **stored XSS** plus disclosure via permitted getters.

Put the directory in the repo, outside `public://`, non-writable by PHP.

`fft_render()` uses the procedural `twig_render_template()` and `global $theme_engine` (D7-era), so
it throws outside a themed web request.