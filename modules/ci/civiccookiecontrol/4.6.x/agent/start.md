<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Civic Cookie Control (project `civicccookiecontrol`, module `civiccookiecontrol`) — agent index

Drupal integration for the commercial **Civic Cookie Control** consent widget. PHP **8.0**, core
`^9.3 || ^10 || ^11`. Config UI `cookiecontrol.admin_overview` (`configure` in info.yml),
permission `administer civiccookiecontrol`.

> **Naming:** project **`civicccookiecontrol`** (three c's), module machine name
> **`civiccookiecontrol`**. The `libraries:` entries in info.yml also use the
> `civiccokiecontrol/…` spelling — check the exact strings before referencing them.

Key facts:
- Config objects installed: `civiccookiecontrol.settings`, `civiccookiecontrol.iab`,
  `civiccookiecontrol.iab2` — main settings plus IAB TCF and TCF v2 vendor configuration.
  `src/CCCConfigNames.php` centralises the config object names; read it rather than hard-coding.
- Domain classes: `CookieCategoryInterface` (consent categories),
  `NecessaryCookieInterface` (strictly necessary cookies that cannot be rejected),
  `AltLanguageInterface` (consent text per language), `CCC9Vendors` (vendor handling).
- The consent widget itself is **Civic's hosted product** — the module supplies configuration and
  asset loading, not the consent engine. An API key/licence from Civic is required.
- Permission `administer civiccookiecontrol` gates the configuration screens.

```bash
drush en civiccookiecontrol -y
drush cget civiccookiecontrol.settings
drush role:perm:add compliance_officer 'administer civiccookiecontrol'
```

Notes:
- Scripts you want blocked before consent must be wired to the consent categories — enabling the
  module alone shows a banner but does not stop third-party scripts that other modules add
  unconditionally.
- Because the widget is hosted, check the third-party asset against your own CSP and
  data-processing documentation.
