<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Layout Builder Quick Add (layout_builder_quick_add) — agent index

Direct block picker replacing Layout Builder's off-canvas add flow. Depends on core
`layout_builder`. Core requirement `^10 || ^11`.

Key facts:
- **Routes carry Layout Builder's own access requirement** —
  `_layout_builder_access: 'view'` plus the `layout_builder_tempstore` parameter. That is the
  correct integration: the module inherits Layout Builder's access model rather than inventing
  one, and it operates on the same tempstore so changes are part of the normal save flow.
- Its own permission **`administer layout_builder_quick_add configuration`** is
  `restrict access: true` and its description explicitly warns that it has security implications —
  configuring which blocks are offered is close to configuring what can be placed. Heed that.
- Surface: `src/LayoutBuilderQuickAddHelper.php`, `src/Controller/`, `src/Form/`, two Twig
  templates, `config/install`, libraries file.
- Editorial-experience change only — it does not alter what a user is permitted to place.
