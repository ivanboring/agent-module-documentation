<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Layout Builder Claro (lb_claro) — agent index

CSS/render adjustments so Layout Builder matches the **Claro** admin theme. No dependencies, no
config, no permissions, no schema, no Drush. PHP **8.1**; installed release **2.0.0-alpha2**
(alpha — expect churn).

Key facts:
- Stylesheets in `css/`: `layout-builder.css`, `off-canvas.css`, `entity-forms.css`,
  `media-library.css`, declared in `lb_claro.libraries.yml`.
- Three hooks in `lb_claro.module`:
  - `hook_form_alter()` — attaches the entity-form styling to the forms Layout Builder opens;
  - **`hook_css_alter(&$css, AttachedAssetsInterface $assets)`** — removes/reorders core
    stylesheets that would otherwise override the Claro-matched ones. This is the hook to look at
    first if styles regress after a core update, since it targets core CSS by path;
  - `hook_theme_registry_alter()` — adjusts theme hooks so the builder markup can be restyled.
- `src/OffCanvasRenderer.php` handles the off-canvas dialog rendering specifically.
- `lb_claro.install` covers install-time setup.

Notes:
- It assumes **Claro** is the admin theme; with a different admin theme the overrides will fight
  it rather than help.
- Because `hook_css_alter()` unsets core assets by path, a core release that renames or splits a
  Layout Builder stylesheet can silently drop the override — check after minor core upgrades.
