<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Web Icons integrates several icon libraries — Material Icons, Boxicons and others — providing a field, a picker dialog and a Twig extension so icons can be used from content and from templates alike.

---

The module supplies each library as a plugin with its own picker template (`icon-selector--items-materialicons.html.twig`, `icon-selector--items-boxicons.html.twig`), a field type rendered through `webicon-field--value.html.twig`, and `WebiconsTwigExtension` so a theme can emit an icon directly without going through a field. The picker itself is a dialog at `/webicon-selector`, gated by `access content` — necessarily open to whoever fills in the form, and harmless in itself, since what it exposes is a list of icon names from a public library. Dependencies are core only, with a range of `^9 || ^10 || ^11`. This is the fourth icon approach in the campaign, and the distinction is worth keeping straight: `iconify_icons` (wave 59) fetches from the Iconify API and needs outbound HTTP; `font_iconpicker` (wave 59) is bring-your-own-font; `icons` (wave 62) is an API module with provider submodules, and overlaps with the icon API Drupal added in core 11.1; this one bundles specific named libraries with a Twig extension. On a current core, check whether core's own icon support already covers the requirement before adding any of them.

---

- Let editors pick a Material Icon.
- Use Boxicons in content.
- Add an icon field to a content type.
- Emit an icon from a Twig template.
- Give editors a searchable icon dialog.
- Standardise icons across a site.
- Show an icon beside a link.
- Use icons in a card component.
- Add icons without a font project.
- Render an icon by name.
- Support several icon libraries at once.
- Theme the icon output.
- Add icons to menu items.
- Show icons in a listing.
- Reduce bespoke icon markup.
- Give a design system an icon field.
- Pick icons from a modal.
- Support a site still on Drupal 9.
