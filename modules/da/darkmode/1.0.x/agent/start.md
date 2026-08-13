<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Darkmode (darkmode) — agent index

**Adds a client-side light/dark theme toggle button by integrating the Darkmode.js library through a placeable block.**

- **Version:** 1.0.x
- **Core:** ^9.2 || ^10 || ^11
- **Requires library:** `darkmode-js` npm-asset at `web/libraries/darkmode-js` (loaded by `darkmode/initiator` + `darkmode/darkmodecss`).
- **Block plugin:** `darkmode_switcher` (`src/Plugin/Block/DarkmodeSwitcherBlock.php`) — all options (offsets, colors, time, cookie persistence, theme mode) passed to JS via `drupalSettings`.
- **Routes/permissions:** none of its own; uses core block administration.
- **Security:** No routes, no permissions, no mutating endpoints; purely client-side theming configured per block. No findings.
