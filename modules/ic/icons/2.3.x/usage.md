<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Icons is an **API module** for icon handling: it defines how icon sets are declared and rendered, and ships adapters for Font Awesome, Fontello, IcoMoon and a generic picker rather than binding the site to one library.

---

The pattern this addresses is familiar from the two icon modules documented in wave 59 — `iconify_icons` binds a site to the Iconify API, `font_iconpicker` to whatever font project you configure — and both are useful and both are commitments. Icons takes the API position instead: a core module defining the abstraction, plus one submodule per provider (`icons_fontawesome`, `icons_fontello`, `icons_icomoon`, `icons_iconpicker`), so a site enables the providers it uses and can add another without changing how icons are stored or rendered. It ships an `icons.field_type_categories.yml`, placing its field types into Drupal's field-type category system so they appear sensibly in the field-add UI. Dependencies are core `options` alone, and the core requirement is `^10.5 || ^11` — relatively recent, which matters because Drupal 11.1 introduced an icon API in core itself, so a site on a current core should check whether core's own icon support covers the requirement before adding this.

---

- Support several icon libraries on one site.
- Add Font Awesome icons to content.
- Use IcoMoon or Fontello icon sets.
- Give editors an icon picker.
- Switch icon provider without changing stored data.
- Add a provider by enabling a submodule.
- Standardise icon handling across a site.
- Place icon fields in the field-add UI sensibly.
- Reuse one icon abstraction across modules.
- Migrate between icon libraries.
- Provide icons for a component library.
- Let a theme declare its own icon set.
- Add icons to menu items.
- Support a design system's icon inventory.
- Render icons consistently across entity types.
- Keep icon choices in exportable configuration.
- Enable only the providers a site uses.
- Build a bespoke provider on the API.
