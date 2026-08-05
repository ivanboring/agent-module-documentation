<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Components Extras adds a render element and a theme-manager service on top of the Components module, giving developers a way to render a component from a render array rather than only from a Twig include.

---

The Components module's contribution is namespaced Twig paths — `@mycomponents/card.html.twig` — which is fine when you are writing a template but awkward when you are building a render array in PHP and want a component rendered as part of it. Components Extras closes that gap: `src/Element` supplies the render element, `ComponentThemeManager` (behind `ComponentThemeManagerInterface`) resolves which theme's component should be used, `components_extras.components.yml` declares the module's own namespace, and `templates/components-extras.html.twig` provides the wrapper. There are no routes, permissions or configuration; the audience is explicitly developers, as the module's own description says. Its composer constraint is unusually permissive — `^1.0|^2.0@beta|^3.0@beta` — so it accepts beta releases of the parent on two major branches, which is worth noticing when pinning versions. Core range is a wide `^8 || ^9 || ^10 || ^11`.

---

- Render a component from a PHP render array.
- Resolve the right theme's version of a component.
- Build a component library callable from code.
- Bridge render arrays and Twig component includes.
- Reuse a component inside a custom block plugin.
- Return a component from a controller.
- Keep component markup in one place.
- Render components from a Views field.
- Support theme-specific component overrides.
- Compose a page from named components.
- Attach libraries alongside a component.
- Give a design system a PHP-side API.
- Render components in a custom form element.
- Reduce inline Twig in PHP.
- Support several themes sharing a component set.
- Wrap a component with consistent markup.
- Add components to an email render pipeline.
- Prototype component usage before theming.
