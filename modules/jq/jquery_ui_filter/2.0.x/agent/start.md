<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# jQuery UI Filter (jquery_ui_filter) — agent index

A text filter converting heading-structured HTML into jQuery UI **accordion**/**tabs** widgets.
Installed release **8.x-2.0-beta1**. Config UI `/admin/config/content/jquery_ui_filter`
(`configure: jquery_ui_filter.settings`); per-format settings on the filter itself.
No permissions, no Drush; config schema shipped.

Key facts:
- Filter `@Filter(id = "jquery_ui_filter", title = "jQuery UI accordion and tabs widgets")` →
  `Plugin\Filter\jQueryUiFilter`.
- **Dependencies are the contrib jQuery UI stack** (jQuery UI was removed from Drupal core):
  `jquery_ui (>=8.x-1.7)`, `jquery_ui_accordion (>=2.1)`, `jquery_ui_tabs (>=2.1)`, plus core
  `filter`. All three must be installed or the module cannot be enabled.
- `js/jquery_ui_filter.js` initialises the widgets, handles deep links to a specific
  tab/panel, and manages accessibility behaviour; assets are declared in
  `jquery_ui_filter.libraries.yml`.
- Routes/links: `jquery_ui_filter.routing.yml` + `jquery_ui_filter.links.menu.yml` provide the
  settings page.
- Conversion happens at **render** time — the stored HTML stays plain headings and content, so
  disabling the filter degrades gracefully to readable text.

```bash
drush en jquery_ui jquery_ui_accordion jquery_ui_tabs jquery_ui_filter -y
drush cget jquery_ui_filter.settings
drush php:eval '
$f = \Drupal\filter\Entity\FilterFormat::load("full_html");
$f->setFilterConfig("jquery_ui_filter", ["status" => TRUE]);
$f->save();'
```

Note: jQuery UI itself is end-of-life upstream; treat this as a migration-friendly option for
existing content rather than a choice for new builds.
