<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Layout Builder Context (layout_builder_context) — agent index

Adds a **Context visibility** option to Layout Builder sections and block components, evaluated by
the contrib **Context** module. Version **1.0.2**. Core `^9 || ^10 || ^11`.
Depends on core `layout_builder` and contrib `context`.

No routes, no permissions, no config page. Two classes:
`EventSubscriber/BlockComponentRenderArraySubscriber.php`, `Utility/Visibility.php`.

Build the Contexts at **Admin > Structure > Context**, then select them on a layout or block.
If the conditions do not pass, the section/component is not rendered.

**Visibility only.** Contexts with **Reactions** have no effect through this module — a Context
that swaps a theme or places a block elsewhere will not do those things here.