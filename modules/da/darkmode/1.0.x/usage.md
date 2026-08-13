<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Darkmode integrates the Darkmode.js JavaScript library to add a floating light/dark theme toggle button to the site.

The module ships a single "Darkmode Switcher" block plugin. Placing that block in any region loads the Darkmode.js library (expected at `web/libraries/darkmode-js`, installed as an npm-asset via Composer) and a small initiator script, then passes the block's configuration to the browser through `drupalSettings`. The library injects a fixed toggle widget that inverts the page colors client-side; no server-side rendering or user data is involved.

Configuration is entirely per-block: position (bottom/right/left offsets), transition time, mix and background colors, dark and light button colors, whether to persist the choice in a cookie, and a theme mode (auto/light/dark). All values are plain textfields written to block config by an editor with block-administration rights, so there are no anonymous or mutating endpoints and no security-sensitive surface. Typical setup is: install the npm-asset library, enable the module, then place and style the switcher block.
---
Darkmode adds a client-side light/dark toggle button via the Darkmode.js library, configured through a placeable block.
---
- Enable the module after installing the `darkmode-js` npm-asset library into `web/libraries`.
- Place the "Darkmode Switcher" block in a region via Block Layout.
- Set the toggle's bottom offset (e.g. `64px`).
- Set the toggle's right offset (e.g. `32px`).
- Set the toggle's left offset or leave it `unset`.
- Tune the transition time (e.g. `0.5s`).
- Choose the mix color used when inverting.
- Choose the widget background color.
- Set the dark-mode button color.
- Set the light-mode button color.
- Enable "Save in Cookies" so a visitor's choice persists.
- Force a default theme mode of Auto (match OS).
- Force a default theme mode of Light.
- Force a default theme mode of Dark.
- Restrict the switcher to specific pages using the block's visibility conditions.
- Show the switcher only to certain roles via block visibility.
- Add multiple switcher blocks in different regions for different themes.
- Remove the switcher by disabling or unplacing the block.
- Verify the Darkmode.js library loads by checking the block's attached libraries.
- Reset all styling by restoring the block's default configuration.
- Combine with a custom theme's CSS variables for a coordinated dark palette.
