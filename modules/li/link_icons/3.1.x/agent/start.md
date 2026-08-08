<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Link Icons formatter (link_icons) — agent index

Field formatter for core **Link** fields that renders a **Font Awesome brand icon** for the linked
service. Version **3.1.0-rc7**. Core `^8 || ^9 || ^10 || ^11`.
Depends on core `link` and contrib **`fontawesome` (`^2 || ^3`)**.
Permission: `administer link icon services`.

Recognised services are **config entities** in submodule **`link_icons_brands`** (domain → icon),
so the set is extendable/overridable without code.

**Requires the Font Awesome module and its library to actually load** on the page — otherwise the
formatter emits icon markup with nothing to render it.

Set it as the formatter on a Link field; options cover label visibility and icon size.