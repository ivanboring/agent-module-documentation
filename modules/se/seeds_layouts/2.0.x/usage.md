<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Seeds Layouts provides a set of layout plugins for Layout Builder, written to work across CSS frameworks rather than assuming one.

---

Layout Builder ships four layouts — one, two, three and four columns — and every project immediately needs more: an asymmetric split, a wide band with a constrained inner column, a sidebar arrangement that stacks in a specific order on mobile, a grid that reflows differently at each breakpoint. Writing those means a layout plugin, a template and a set of classes per project, and the classes are where portability dies, because a layout written for Bootstrap's grid does not work on Tailwind or on a bespoke theme. Writing them framework-agnostically is what makes a layout library reusable, and the `seeds_layouts_classes_extractor` submodule addresses the corollary — the classes a layout emits have to be known to whatever builds the site's CSS, which for a utility framework with purging means they must be discoverable or they are stripped from the build. Version **2.0.22** on core `^10 || ^11`, with `libraries-extend` entries that hook into the media library's assets. Two things to weigh. **A layout's real interface is its breakpoint behaviour**, since a two-column layout is a design decision only until the viewport narrows and then it is a content-order decision — which of the two columns comes first when they stack is usually the thing an editor cares about and the thing a generic layout guesses. And **layouts become a dependency of the content**: a page built with a layout keeps referring to it, so removing or renaming one leaves sections that cannot render, which is the same trap as paragraph types and behaviour plugins.

---

- Add asymmetric layouts to Layout Builder.
- Build a wide band with a narrow inner column.
- Add a sidebar layout that stacks predictably.
- Provide more than core's four layouts.
- Use layouts across CSS frameworks.
- Build a responsive grid section.
- Add a hero layout to Layout Builder.
- Support a Tailwind-based theme's layouts.
- Provide reusable layout plugins.
- Build a three-column asymmetric section.
- Control stacking order on mobile.
- Add layouts without per-project plugins.
- Support a design system's grid.
- Extract layout classes for a CSS build.
- Provide layouts to a distribution.
- Build a full-width section layout.
- Add a two-thirds/one-third layout.
- Support Layout Builder page building.
