<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Font Icon Picker adds a field whose widget is a visual icon chooser, driven by whatever **custom icon font** a site already uses rather than by a bundled icon set.

---

Most Drupal icon modules ship a specific library — Font Awesome, Bootstrap Icons — and lock the site to it. This one inverts the relationship: you point it at your own font project (the settings form at `/admin/config/user-interface/font-iconpicker` takes the library details, and a `composer.libraries.json` is supplied for installing a font as a `drupal-library`), and it builds the picker from that. `src/IconHelper.php` and its interface do the parsing, `src/Element` supplies the form element, `src/Plugin` the field type/widget/formatter, and `templates/font-icon.html.twig` renders the chosen icon. It depends only on core `field`, has one route gated by `administer site configuration`, and declares no permission of its own. The `core_version_requirement` of `^10.3 || ^11 || ^12` already spans Drupal 12. The trade-off of the bring-your-own-font approach is that the icons a content editor sees are only as good as the font project's metadata — if the font's manifest is incomplete the picker's labels and grouping will be too.

---

- Let editors pick an icon from the site's own icon font.
- Add an icon field to a content type.
- Use a bespoke corporate icon set in Drupal.
- Avoid bundling a third-party icon library.
- Show a visual picker instead of a class-name text field.
- Keep icon choices consistent with the design system.
- Render a chosen icon through a Twig template.
- Attach icons to menu-driven content.
- Support several icon fonts on one site.
- Update the icon set by updating the font project.
- Give a card component an editor-chosen icon.
- Prevent typos in hand-entered icon classes.
- Install the icon font through composer.
- Match icons to a brand's design tokens.
- Provide icons for a landing-page component library.
- Preview icons while editing.
- Move away from a hard-coded icon list.
- Prepare an icon field for Drupal 12.
