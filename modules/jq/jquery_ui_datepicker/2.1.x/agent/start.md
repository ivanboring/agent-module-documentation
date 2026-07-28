# jquery_ui_datepicker — agent start

Compatibility shim: provides the **jQuery UI Datepicker** asset library (removed from core)
as a Drupal library. Depends on the `jquery_ui` module. No config, permissions, services, or
PHP API.

Usage: enable the module, then attach the library where you need the widget:

```php
$build['#attached']['library'][] = 'jquery_ui_datepicker/datepicker';
```

Or as a dependency in a theme/module `*.libraries.yml`. That is the entire surface area —
there are no solution docs because there is nothing further to configure or extend.
