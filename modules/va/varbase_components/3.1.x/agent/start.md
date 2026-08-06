<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Varbase Components (varbase_components) — agent index

Component handler for the **Varbase distribution**: helpers plus a theme switcher for component
rendering. Version **3.1.0**. Core **`~11.4.0`** — pinned to a single Drupal minor.
No dependencies, routes, permissions or config.

Classes: `EventSubscriber/ActiveThemeChangeSubscriber`, `Hook/VarbaseComponentsHooks`.

The theme switcher is why it exists: components rendered in an admin context (Layout Builder
previews, admin forms embedding front-end markup) would otherwise resolve templates and libraries
against the **admin** theme, so previews look nothing like the page.

**Distribution component, not a standalone module.** The `~11.4.0` pin means installing it ties
the site's core updates to Varbase's release cycle. Say so before recommending it outside
Varbase.