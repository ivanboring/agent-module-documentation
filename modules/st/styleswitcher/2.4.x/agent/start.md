<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Style Switcher (styleswitcher) — agent index

Lets visitors choose between alternative stylesheets. No module dependencies.
Core requirement `^9.5 || ^10 || ^11`.
Admin at `/admin/config/user-interface/styleswitcher`, all routes gated by
**`administer styleswitcher`**.

Key facts:
- Per-theme configuration route `/admin/config/user-interface/styleswitcher/settings/{theme}`
  carries an **`_access_theme: 'TRUE'`** requirement alongside the permission, so the `{theme}`
  parameter cannot be pointed at an arbitrary or uninstalled theme.
- Styles are **config entities** with schema, so definitions export and deploy with
  `drush cex`/`cim`; a `src/ParamConverter/` resolves them on the edit routes.
- The visitor-facing switch needs **no permission** — selecting a stylesheet is not privileged.
  Only administration is gated.
- The switcher renders as a block (`src/Plugin/Block/`); `css/styleswitcher-overlay.css` backs
  the preview.
- Accessibility framing is fair but limited: an opt-in high-contrast or large-text stylesheet is
  a recognised accommodation, but it does not substitute for accessible defaults, and each
  variant is only as accessible as the CSS behind it.
- `.info.yml` reports the legacy `version: '8.x-2.4'`.
