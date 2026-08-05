<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Web Icons (webicons) — agent index

Integrates named icon libraries (**Material Icons**, **Boxicons**, …) as a field, a picker dialog
and a **Twig extension**. Core-only dependencies. Core requirement `^9 || ^10 || ^11`.

Key facts:
- Picker dialog at `/webicon-selector` (`_permission: 'access content'`) — necessarily reachable
  by whoever fills in the form, and low-risk: it lists icon names from a public library.
- `src/WebiconsTwigExtension.php` lets a **theme** emit an icon directly, without a field. That is
  the distinguishing feature against the other icon modules in this campaign.
- Per-library picker templates (`icon-selector--items-materialicons.html.twig`,
  `…-boxicons.html.twig`) and a field value template.
- **Four icon approaches now documented — keep them straight:**

  | Module | Approach |
  |---|---|
  | `iconify_icons` (wave 59) | Iconify **API**, needs outbound HTTP |
  | `font_iconpicker` (wave 59) | bring-your-own icon **font** |
  | `icons` (wave 62) | API module with provider submodules |
  | **`webicons`** | bundled named libraries + Twig extension |

  **Drupal 11.1 added an icon API to core** — check whether that already covers the requirement
  before adding any of them.
