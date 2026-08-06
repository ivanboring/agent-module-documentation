<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Bootstrap UI Kit (bootstrap_ui_kit) — agent index

Branded interface components taking their styling from **the site's own theme**. Configure at
`/admin/config/…/bootstrap_ui_kit`. Version **2.0.0**.
Core requirement `^8 || ^9 || ^10 || ^11`.

**The recurring problem it addresses:** Bootstrap's components **look like Bootstrap**. A carefully
themed site still shows its framework wherever a component is used unmodified — which is most
places, because overriding each one is work nobody budgets. Inheriting the theme's colours, spacing
and typography makes the components look like **the site** by default, and the framework an
implementation detail rather than a visual signature.

**Two things worth attaching, both about what "inherits from your theme" requires:**
1. **The theme must expose its values as something inheritable** — CSS custom properties or
   Bootstrap's SCSS variables. **A theme that hard-codes colours in compiled CSS has nothing to
   inherit from**, so the promise depends on the theme's construction, not the kit.
2. **Components carry accessibility behaviour, not just appearance** — an alert needs a role, a badge
   needs contrast at its size, a button group needs keyboard navigation. A component library is
   where those are **got right once for the whole site, or wrong once for the whole site**. That is
   the strongest argument for using one, and the reason to check its **markup**, not only its
   styling.
