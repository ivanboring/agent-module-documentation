<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Web components (webcomponents) — agent index
**Injects the LRN/HAX web-components build (polyfills, autoloader, wc-registry) so custom elements work on Drupal pages.**

- **Version:** 9.1.x — core `^8 || ^9 || ^10`
- **Route:** `webcomponents.settings` `/admin/config/content/webcomponents` (perm `administer site configuration`)
- **Hooks:** `page_attachments_alter` (preconnect/preload/modulepreload tags), `page_bottom` (inline loader script)
- **Security:** only privileged surface is the admin settings form. Observation: `webcomponents.module` `page_bottom` renders `{{ somecontent|raw }}` and `WebComponentsService::getBuild()` interpolates the configured CDN/location into a `<script>` unescaped — source is the `administer site configuration` admin permission (trusted), so this is admin-controlled markup, not an anonymous XSS vector.

See [configure/settings.md](configure/settings.md).
