<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Default Class (default_class) — agent index

**Adds region/plugin/provider classes to blocks and node/user/term classes to the page — zero config.**

- **Version:** 1.0.x
- **Core:** ^8.8 || ^9 || ^10 || ^11
- **Routes/permissions:** none.
- **Hooks:** `hook_preprocess_block` (adds `block`, plugin id, provider, `block--REGION`, `block--block-content--TYPE`); `hook_preprocess_html` (adds `node-*`, `user-*`, `term-*` classes).
- **Security:** No routes, no config, no user input handling. Class values are emitted through the Attribute object; purely presentational.
