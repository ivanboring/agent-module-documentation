<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Link title formatter (link_title_formatter) — agent index

One field formatter: renders a link field's **title as text**, no anchor.
Version **2.0.2**. Core `^8 || ^9 || ^10 || ^11`. Depends on `link`.
No routes, permissions, or settings — select it in Manage display.

Class: `Plugin/Field/FieldFormatter/LinkTitle`.

Typical reasons: avoiding nested anchors inside an already-linked card; print/email view modes;
feeding a label to a search index as text.

Check the empty case — if the link field's title is optional and unset, this formatter has nothing
to render.