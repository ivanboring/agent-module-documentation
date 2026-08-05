<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Layout Builder Claro restyles Layout Builder to match the Claro admin theme: it swaps in CSS for the layout canvas, off-canvas dialogs, entity forms and the media library so the builder stops looking like a different application.

---

Layout Builder's own styling predates Claro and sits awkwardly inside it — mismatched form controls, off-canvas panels that look like Seven, media-library dialogs with their own conventions. This module is a targeted CSS-and-render fix rather than a feature. Four stylesheets (`layout-builder.css`, `off-canvas.css`, `entity-forms.css`, `media-library.css`) are attached through `lb_claro.libraries.yml`, and three hooks make them land in the right places: `hook_form_alter()` attaches the entity-form styling to the relevant forms, `hook_css_alter()` removes or reorders the core stylesheets that would otherwise fight the Claro-matched ones, and `hook_theme_registry_alter()` adjusts theme hooks so the builder's markup can be restyled. An `OffCanvasRenderer` class handles the off-canvas dialog specifically, which is where core's styling diverges most. The installed release is `2.0.0-alpha2` and it requires PHP 8.1; there is no configuration, no permissions and nothing to set up beyond enabling it.

---

- Make Layout Builder look native inside the Claro admin theme.
- Fix mismatched form controls in the layout canvas.
- Restyle off-canvas dialogs to Claro conventions.
- Align media library dialogs with the admin theme.
- Improve the editor experience for Layout Builder sites.
- Reduce visual noise when configuring blocks.
- Give content editors a consistent admin UI.
- Avoid writing bespoke admin CSS in a custom theme.
- Keep Layout Builder usable on smaller screens.
- Match entity forms inside the builder to Claro.
- Remove conflicting core Layout Builder styles.
- Present a coherent look across admin screens.
- Reduce editor training friction on a new build.
- Improve contrast and spacing in the builder.
- Apply the styling site-wide by enabling one module.
- Keep the fix separate from the site's own theme.
- Roll back instantly by uninstalling.
- Support Layout Builder on Drupal 10 and 11 alike.
- Avoid patching core Layout Builder CSS.
- Give stakeholders a more polished demo of Layout Builder.
