<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Browser Back Button (browser_back_button) — agent index

Provides one **block** ("Browser Back Button Block", id `browser_back_button_block`) that renders an
in-page clickable element — configurable text or an image, default "Back" — which runs
`window.history.back()` when clicked. It is the browser's Back action placed inside the page as a
themeable block: you position it through Block layout and set its label per placement. No routes,
services, permissions, drush commands, plugin types, or dedicated settings page — the only
configuration is per-block.

The mechanism is small and self-contained. The block's `build()` renders the
`browser_back_button_history` theme hook (`<div id="back-button-wrapper">{{ data.body }}</div>`) and
attaches the `browser_back_button/browser_back_button.history` JS library. That library's Drupal
behavior `browser_back_button` binds a click handler to `#back-button-wrapper` and calls
`window.history.back()`. The block body is stored as a `text_format` value and printed through
`check_markup`, so the allowed HTML is bounded by the text format the admin placing the block selects.

- Depends on: nothing (info.yml declares no `dependencies`).
- Core: `^8 || ^9 || ^10 || ^11`. Package: none (info.yml sets no `package`). Version 2.0.2.
- No settings page / `configure` route. Per-block config only, reached via Block layout → "Configure block".
- No permissions, no drush, no services, no plugin types. Provides config schema and one theme hook.
- No routes, endpoints, or callbacks; the only input is the admin-configured block body.

## Key facts (real machine names)

- Block plugin: `browser_back_button_block` — `src/Plugin/Block/BrowserBackButtonBlock.php` (extends
  `BlockBase`; `admin_label` and `category` both "Browser Back Button Block").
- Block config keys (schema `block.settings.browser_back_button_block`,
  `config/schema/browser_back_button.schema.yml`): `body` (`text_format` — the button text/image;
  default value "Back") and `reload_status` (`boolean`, default `1`). Only `body` is exposed in
  `blockForm()` (element `#type => text_format`, title "Back Button Text or Image").
- Theme hook: `browser_back_button_history` (variable `data`, template
  `templates/browser-back-button-history.html.twig`), registered by `browser_back_button_theme()`.
- Library: `browser_back_button/browser_back_button.history` (`js/browser_back_button.history.js`;
  dependencies `core/drupal`, `core/jquery`, `core/once`). Behavior id `browser_back_button`; binds
  `click` on `#back-button-wrapper` → `window.history.back()`.
- Hooks implemented (`browser_back_button.module`): `hook_help` (`help.page.browser_back_button`,
  renders `README.txt`, via the `markdown` filter if that module is enabled, else escaped `<pre>`),
  `hook_theme`.
- NOTE: the project description and README advertise a "page reload option" (the `reload_status`
  config). The shipped 2.0.2 JavaScript only calls `window.history.back()` — it does not read
  `reload_status` and does not force a reload. Treat reload as unimplemented in this release.
