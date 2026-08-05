<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# SDC – Component library (sdc_component_library) — agent index

Preview page for a site's **Single Directory Components**. No module dependencies.
Core requirement `^10.3 || ^11` (matching SDC availability).

| Route | Path | Permission |
|---|---|---|
| `sdc_component_library.component_list` | `/sdc-component-library` | **`access sdc component library`** (`restrict access: true`) |
| `sdc_component_library.settings` | `/admin/config/system/sdc-component-library` | — |

Key facts:
- **The restricted permission is appropriate**, and worth explaining rather than assuming: a
  component gallery enumerates the site's front-end building blocks and renders arbitrary
  components with sample props. That is useful reconnaissance and occasionally a rendering
  surface — not something to leave open.
- **Renders through Drupal itself**, using props from each component's own schema. That is the
  advantage over Storybook: no Node toolchain, no parallel rendering environment, and no drift
  between the story and what the site actually outputs. The trade-off is fewer authoring features
  (controls, docs pages, interaction tests).
- Surface: `src/Controller/ComponentsController.php`, `src/Routing/`, `src/Form/SettingsForm.php`,
  `config/install`, `config/schema`, plus a `components_preview` library declared in the info file.
