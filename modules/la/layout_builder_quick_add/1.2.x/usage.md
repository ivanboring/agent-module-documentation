<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Layout Builder Quick Add replaces Layout Builder's off-canvas sidebar with a direct block picker, cutting the number of steps between "add a block here" and having one.

---

Layout Builder's add-block flow is a sequence of off-canvas panels: choose a region, open the sidebar, pick a category, pick a block, configure it. It is thorough and it is slow, and on a page assembled from twenty components the friction adds up. This module presents a listing of available blocks directly instead, with `LayoutBuilderQuickAddHelper` and two Twig templates (`quick-add-blocks-listing.html.twig` and its item partial) rendering it, plus routes for adding and cancelling that carry Layout Builder's own `_layout_builder_access: 'view'` requirement and the `layout_builder_tempstore` parameter — which is the correct integration, since it means the module inherits Layout Builder's access model rather than inventing one. Its own permission, `administer layout_builder_quick_add configuration`, is marked `restrict access: true` and carries an explicit warning in its description that it has security implications, which is worth heeding: configuring which blocks are offered is close to configuring what can be placed. Dependencies are core `layout_builder` alone, on `^10 || ^11`.

---

- Add a block without the off-canvas sidebar.
- Reduce clicks when building a page.
- Show available blocks directly.
- Speed up assembling a landing page.
- Improve Layout Builder's editorial flow.
- Reduce training for page building.
- Show a curated block listing.
- Add several blocks in succession.
- Improve usability on a large block catalogue.
- Keep Layout Builder's access model.
- Cancel an add without leaving the page.
- Theme the block listing.
- Reduce editor frustration.
- Support a component-heavy build.
- Make block choice more visual.
- Reduce time to build a page.
- Support editors new to Layout Builder.
- Streamline a repetitive workflow.
