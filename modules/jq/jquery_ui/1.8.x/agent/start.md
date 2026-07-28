# jquery_ui — agent start

Re-provides the deprecated jQuery UI asset library (removed from Drupal core) so themes/modules
can keep using it. No config UI, no permissions, no services. You just install it and attach the
libraries. jQuery UI is End-of-Life upstream — prefer migrating off it for new code.

## Attach a library

Declared in `jquery_ui.libraries.yml` (plus more added dynamically for companion sub-modules via
`hook_library_info_alter()` reading `jquery_ui.libraries.data.json`):

- `jquery_ui/core` — the base (was `core/jquery.ui`)
- `jquery_ui/widget` — widget factory (was `core/jquery.ui.widget`)
- `jquery_ui/mouse` — mouse interaction base
- `jquery_ui/position` — position utility
- `jquery_ui/locale` — datepicker localization (depends on core/drupal, drupalSettings, jquery)

```yaml
# my_theme.libraries.yml or in a render array:
my_module/my_lib:
  dependencies:
    - jquery_ui/core
    - jquery_ui/widget
```

```php
$build['#attached']['library'][] = 'jquery_ui/core';
```

Individual widgets (accordion, autocomplete, button, datepicker, dialog, draggable, droppable,
menu, progressbar, resizable, selectable, selectmenu, slider, sortable, spinner, tabs, tooltip)
and effects live in separate companion projects (e.g. `jquery_ui_datepicker`) that build on this base.

Migration note: replace old `core/jquery.ui*` library references with `jquery_ui/*` equivalents.
