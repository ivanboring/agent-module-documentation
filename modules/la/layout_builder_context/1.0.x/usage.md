<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Layout Builder Context lets a Layout Builder section or an individual block inside it be shown or hidden according to a Context module condition.

---

Layout Builder gives you per-entity layouts but almost no conditional display: a section is either in the layout or it is not. Core's block visibility conditions do not reach into Layout Builder components. So the usual answer — "show this promo only to anonymous users on the German site" — ends up as either a duplicate layout or a custom block plugin.

This module closes that gap by borrowing the Context module's condition system. Once enabled, layouts and blocks gain a **Context visibility** option; you build the Contexts at Admin > Structure > Context as usual, and select them here. If the conditions do not pass, the section or component is not rendered.

Two constraints are worth stating up front. **It drives visibility only** — Contexts that carry Reactions have no effect through this module, so a Context designed to swap a theme or add a block elsewhere will not do those things here. And it is a thin layer: a `BlockComponentRenderArraySubscriber` and a `Visibility` utility, roughly two classes, which means it inherits Context's evaluation semantics wholesale rather than reimplementing them.

The pairing is the point. If a site already uses Context, its existing conditions become available inside Layout Builder for free.

---

- Hide a Layout Builder section conditionally.
- Hide a single block inside a layout.
- Reuse existing Context conditions in Layout Builder.
- Show a promo only to anonymous users.
- Vary a layout by language.
- Vary a layout by path.
- Vary a layout by user role.
- Avoid duplicating a layout per audience.
- Avoid writing a custom block plugin for visibility.
- Build conditions at Admin > Structure > Context.
- Apply Context visibility to a whole section.
- Apply Context visibility to one component.
- Understand Reactions have no effect here.
- Keep visibility logic in one place.
- Combine several conditions on one component.
- Test that conditions evaluate as expected before launch.