<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Seeds Layouts (seeds_layouts) — agent index

**Layout plugins for Layout Builder**, written to work across CSS frameworks. Submodule
**`seeds_layouts_classes_extractor`**. Uses `libraries-extend` to hook into the media library's
assets. Configure at `/admin/config/…/seeds_layouts`. Version **2.0.22**.
Core requirement `^10 || ^11`.

**Why more layouts are always needed:** Layout Builder ships one, two, three and four columns.
Projects immediately want an **asymmetric split**, a **wide band with a constrained inner column**, a
**sidebar that stacks in a specific order on mobile**, a grid that reflows per breakpoint. Writing
those means a plugin, a template and classes per project — and **the classes are where portability
dies**, since a Bootstrap-grid layout does not work on Tailwind or a bespoke theme.

**The classes extractor addresses the corollary:** the classes a layout emits must be **discoverable
by whatever builds the site's CSS**, or a utility framework with purging **strips them from the
build**.

**Two things to weigh:**
1. **A layout's real interface is its breakpoint behaviour.** A two-column layout is a design
   decision only until the viewport narrows — then it is a **content-order** decision, and *which
   column comes first when they stack* is what an editor cares about and what a generic layout
   guesses.
2. **Layouts become a dependency of the content.** A page keeps referring to its layout — removing
   or renaming one leaves **sections that cannot render**. Same trap as paragraph types and
   behaviour plugins.
