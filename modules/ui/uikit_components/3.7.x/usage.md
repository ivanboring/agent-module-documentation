<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
UIkit Components is the companion module to the UIkit base theme: it adds render elements, Twig helpers and admin configuration for UIkit widgets that a theme alone cannot provide, such as menus rendered as UIkit navigation components.

---

A base theme can style markup but cannot easily add new render elements or alter menu structures, which is where this module comes in. It provides a `UIkitComponents` service class and an API (`uikit_components.api.php`) that themes and modules can use to build UIkit-flavoured output, an admin page at `uikit_components.admin` (declared as the module's `configure` route, with menu and local task links) for the module's settings, and integration with core `link` and `menu_link_content` so menus can be rendered as UIkit navigation, offcanvas or dropdown components. Being a theme companion, its value depends on running the UIkit base theme; the `core: 8.x` line still present in its `info.yml` alongside `core_version_requirement: ^8 || ^9 || ^10 || ^11` shows its age, though it remains D11-compatible.

---

- Render a Drupal menu as a UIkit navigation component.
- Add UIkit offcanvas navigation to a site.
- Use UIkit dropdown menus driven by Drupal menu links.
- Provide render elements for UIkit widgets.
- Configure component behaviour from an admin page.
- Extend a UIkit-based theme without patching it.
- Keep UIkit markup consistent across a site.
- Give themers a documented API for components.
- Add UIkit accordion or tab markup to templates.
- Support menu link content in UIkit components.
- Build a UIkit-based intranet theme.
- Reuse components across several UIkit subthemes.
- Reduce custom preprocess code in a theme.
- Standardise component markup for a design system.
- Provide local task links for component configuration.
- Migrate a UIkit site from Drupal 8 through to 11.
- Keep component logic in a module rather than the theme.
- Give editors configurable component options.
- Render nested menus with UIkit's navigation classes.
- Document available components for a theme team.
