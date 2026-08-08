<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Link Icons is a formatter for core's Link field that renders a Font Awesome icon for the linked service — a Facebook glyph for a facebook.com URL, a LinkedIn glyph for LinkedIn, and so on — instead of, or alongside, the link text.

---

Social links are the canonical case. A "follow us" block is half a dozen Link fields, and every theme reinvents the same mapping from URL to brand icon in a template. This module moves that mapping into a field formatter: point it at a Link field, and it recognises the service and emits the right Font Awesome brand icon, with display options for whether to show the label, the icon size, and so on.

The recognised services live in a submodule, `link_icons_brands`, which ships configuration entities describing each brand — Facebook, Twitter/X, LinkedIn and the rest — as the mapping between a domain and its icon. Because they are config entities, the set is extendable: a site can add a brand the module does not ship, or override one, without touching code.

Two dependencies matter. It needs the contrib **Font Awesome** module (`^2 || ^3`) to actually have the icons available, and core **Link**. If Font Awesome is not configured to load its library on the relevant pages, the formatter emits icon markup with nothing to render it.

A single permission, `administer link icon services`, gates managing the brand set.

---

- Show a Font Awesome icon for a social link.
- Render a Facebook icon for a Facebook URL.
- Render a LinkedIn icon for a LinkedIn URL.
- Build a "follow us" block without templates.
- Map a URL's service to its brand icon.
- Show or hide the link label.
- Size the icon via formatter settings.
- Add a brand the module does not ship.
- Override a shipped brand mapping.
- Manage brands as configuration entities.
- Keep icon logic out of theme templates.
- Require the Font Awesome module.
- Confirm the Font Awesome library loads.
- Restrict brand management by permission.
- Reuse the formatter across content types.
- Display social links consistently.
- Extend the recognised service list.
- Format a link field as an icon only.
- Export brand config with the site.
- Apply to a user profile's social links.