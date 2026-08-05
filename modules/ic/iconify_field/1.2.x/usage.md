<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Iconify Field adds an icon field — a field type, a picker widget and a formatter — backed by the Iconify icon sets, with a CKEditor submodule for placing icons in body text.

---

Sites need icons in structured places: a card's icon, a service listing's marker, a call-to-action's glyph. Doing that with a text field holding a class name works until someone mistypes it; doing it with an image field per icon is heavy and inconsistent. A dedicated field type with a picker gets it right, and the icon set here is Iconify, which aggregates well over a hundred open icon collections — Material, Bootstrap, Font Awesome's free set, Simple Icons and many more — under one naming scheme of `collection:name`. Version is **1.2.1** on core `^11.2`, which is a notably tight requirement: this will not install on Drupal 10. The implementation detail worth knowing is that icons come from the **`iconify/json` PHP package installed by Composer**, not from Iconify's public API — `IconResolver` reads the collection JSON from disk through `Iconify\IconsJSON\Finder` and inlines the SVG body into the render array, caching the result. That means no runtime request to a third-party host, which matters for privacy, for offline environments and for pages that must not depend on an external CDN; it also means the icon data is a Composer dependency of real size, and updating the icon sets is a Composer operation.

---

- Add an icon field to a content type.
- Let editors pick an icon from a list.
- Show an icon on a card.
- Add an icon to a service listing.
- Place an icon in body text.
- Use Material icons in content.
- Avoid mistyped icon class names.
- Render icons as inline SVG.
- Avoid loading icons from a CDN.
- Keep icon rendering offline-capable.
- Use Bootstrap icons in a field.
- Add an icon to a menu item's content.
- Style icons with CSS.
- Add icons through CKEditor.
- Provide a consistent icon set.
- Show an icon beside a heading.
- Support a design system's iconography.
- Colour an icon from the theme.
