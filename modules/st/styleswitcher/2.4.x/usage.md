<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Style Switcher lets visitors choose between alternative stylesheets — a high-contrast variant, a larger-text variant, a seasonal skin — and remembers the choice.

---

Administrators define the available styles at `/admin/config/user-interface/styleswitcher`, per theme via a `{theme}` route that uses an `_access_theme: 'TRUE'` requirement so only real, permitted themes can be configured, plus add/edit routes for individual styles and a `src/ParamConverter` to resolve them. A block plugin renders the switcher for visitors, and `css/styleswitcher-overlay.css` supports the preview. Everything administrative sits behind one permission, `administer styleswitcher`; the visitor-facing switching needs no permission, since choosing a stylesheet is not a privileged act. Configuration is stored as config entities with schema, so the defined styles export and deploy like any other configuration. The accessibility angle is the strongest reason to reach for it — an alternative high-contrast or large-text stylesheet is a recognised accommodation — though it is a blunter instrument than designing accessible defaults, and the styles offered are only as good as the CSS behind them. Core requirement is `^9.5 || ^10 || ^11`, and the release carries the legacy `8.x-2.4` packaging string.

---

- Offer visitors a high-contrast stylesheet.
- Provide a large-text variant of a site.
- Let visitors pick a colour scheme.
- Remember a visitor's chosen style.
- Add a seasonal skin without changing the theme.
- Support an accessibility accommodation.
- Preview a style before applying it.
- Place the switcher as a block.
- Define styles per theme.
- Export style definitions with site configuration.
- Offer a print-friendly stylesheet.
- Give a reading-focused variant.
- Support users with light sensitivity.
- Test a redesign as an opt-in style.
- Restrict style administration to one permission.
- Provide a dark variant on an older theme.
- Meet a public-sector accessibility commitment.
- Offer a dyslexia-friendly typography option.
