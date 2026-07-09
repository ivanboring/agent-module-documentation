# jquery_ui_touch_punch — agent start

Library-provider module only — no config, permissions, plugins, or API. Exposes the Touch
Punch shim as the asset library `jquery_ui_touch_punch/touch-punch` (depends on
`jquery_ui/core`) so jQuery UI mouse widgets (draggable, sortable, sliders, resizable) respond
to touch on mobile. Requires the `jquery_ui` module and the external JS at
`/libraries/jquery-ui-touch-punch/jquery.ui.touch-punch.min.js`.

Usage: attach the library where you need touch support —
`$build['#attached']['library'][] = 'jquery_ui_touch_punch/touch-punch';` (or list it in a
`*.libraries.yml` dependency). Nothing else to configure.
