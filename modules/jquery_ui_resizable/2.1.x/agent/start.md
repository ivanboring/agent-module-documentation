# jquery_ui_resizable — agent start

Pure asset-library shim: provides the jQuery UI **Resizable** interaction as library
`jquery_ui_resizable/resizable` (defined via the `jquery_ui` base module's asset data).
No config, services, routes, hooks, or permissions. Depends on module `jquery_ui` (>= 8.x-1.7).

Usage: declare a dependency on `jquery_ui_resizable/resizable` in your `*.libraries.yml` (or
attach it via `#attached['library']`), then call `.resizable()` in your JavaScript. Nothing
else to configure.
