<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Bootstrap UI Kit supplies a set of branded interface components that take their styling from the site's own theme.

---

The recurring problem on a Bootstrap site is that Bootstrap's components look like Bootstrap. A card, an alert, a badge, a button group all arrive with the framework's default appearance, and a site that has been carefully themed still shows its framework wherever a component is used unmodified — which is most places, because overriding each one is work nobody budgets. A kit that inherits the theme's colours, spacing and typography rather than shipping its own inverts that: the components look like the site by default and the framework becomes an implementation detail rather than a visual signature. Version **2.0.0** on `^8` through `^11`, configured at its own settings form. Two things worth attaching, and both are about what "inheriting from your theme" requires to work. **The theme has to expose its values as something inheritable** — CSS custom properties or Bootstrap's own SCSS variables — and a theme that hard-codes colours in compiled CSS has nothing to inherit from, so the kit's promise depends on the theme's construction rather than on the kit. And **components carry accessibility behaviour, not just appearance**: an alert needs a role, a badge needs to be readable at its size and contrast, a button group needs keyboard navigation, and a component library is where those are either got right once for the whole site or got wrong once for the whole site — which is the strongest argument for using one, and the reason to check its markup rather than only its styling.

---

- Use Bootstrap components matching the theme.
- Avoid components looking like default Bootstrap.
- Inherit theme colours in components.
- Build a branded card component.
- Style alerts to match the site.
- Reuse consistent interface components.
- Reduce per-component CSS overrides.
- Support a design system on Bootstrap.
- Style badges and buttons consistently.
- Build a branded component library.
- Match component spacing to the theme.
- Reduce framework visual signature.
- Provide consistent components to editors.
- Support a multi-brand Bootstrap build.
- Style tabs and accordions on-brand.
- Reduce theming work per component.
- Build a consistent admin interface.
- Apply theme typography to components.
