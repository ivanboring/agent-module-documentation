<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Alpine.js Library support (alpine_js) — agent index

Registers Alpine.js as a Drupal library and enforces load order for libraries that **depend on**
or **extend** it. Configure at `alpine_js.settings_form`. Version **3.0.8**.
Core `^9 || ^10 || ^11`. No dependencies, routes, or permissions.

Classes: `AlpineAssetService`, `Form/SettingsForm`.

**The problem it solves, stated plainly:** Alpine initialises on `DOMContentLoaded` and registers
only the plugins present at that moment. Drupal's library system has weights and dependencies but
no concept of "Alpine plugin", so hand-tuned ordering breaks when aggregation or another module
changes the sequence. The symptom is a plugin that silently does nothing — and works locally with
aggregation off.

Fit: progressive enhancement of server-rendered markup, no build step. If the site already has a
bundler and a component framework, this is not the layer it needs.