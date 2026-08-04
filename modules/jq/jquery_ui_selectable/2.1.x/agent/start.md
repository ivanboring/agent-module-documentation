<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# jQuery UI Selectable — agent index

Marker/companion module that re-exposes the deprecated-in-core **jQuery UI Selectable** widget
as a Drupal asset library. Ships only `.info.yml` — no config, permissions, plugins, JS, or
admin UI. Depends on `jquery_ui` (`^1.7`). `configure` is null. Nothing to configure; the only
thing to know is how to attach the library.

## The one fact: attach `jquery_ui_selectable/selectable`

The base `jquery_ui` module declares the library on this module's behalf
(`jquery_ui_library_info_alter()` reading `jquery_ui.libraries.data.json`), so once this module
is enabled you attach:

```php
// Render array
$build['#attached']['library'][] = 'jquery_ui_selectable/selectable';
```
```yaml
# your_theme.libraries.yml — depend on it
your-widget:
  js:
    js/your-widget.js: {}
  dependencies:
    - jquery_ui_selectable/selectable
```

Then in JS: `$('#my-list').selectable({ stop: function (e, ui) { /* … */ } });`

Library contents (from `jquery_ui.libraries.data.json`): jQuery UI **1.13.2**
`assets/vendor/jquery.ui/ui/widgets/selectable-min.js` + `themes/base/selectable.css`;
dependencies `core/jquery`, `jquery_ui/mouse`, `jquery_ui/widget`, `jquery_ui/internal.version`,
`jquery_ui/internal.widget-css`. All served from the `jquery_ui` module's path.
