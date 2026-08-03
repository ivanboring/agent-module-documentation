<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# jQuery UI Spinner — agent index

Code-free metapackage that re-publishes the jQuery UI Spinner widget (removed from core) as the
attachable asset library `jquery_ui_spinner/spinner`. No config, no permissions, no schema, no
plugins, no services, no Drush. Depends on `jquery_ui` and `jquery_ui_button`.

There is nothing to configure — this module is used entirely by attaching one library. Key facts:

- **Library id:** `jquery_ui_spinner/spinner` (jQuery UI 1.13.2, minified JS weight -11, base CSS).
- **Where it is defined:** NOT in this module. The definition lives in the `jquery_ui` module's
  `jquery_ui.libraries.data.json` (key `jquery_ui_spinner`) and is injected into this module's
  namespace by `jquery_ui_library_info_alter()`. Asset files live under `jquery_ui/assets/vendor/`.
- **Dependencies pulled in:** `core/jquery`, `jquery_ui_button/button`, `jquery_ui/widget`,
  `jquery_ui/internal.version`, `internal.keycode`, `internal.safe-active-element`,
  `jquery_ui/internal.widget-css`.
- **Attach it** from PHP: `$build['#attached']['library'][] = 'jquery_ui_spinner/spinner';`
  or list it under `dependencies:` of a custom library in `mymodule.libraries.yml`, then call
  `$('#my-input').spinner({...})` in your own JS.
- **Version dir vs release:** module release is `2.1.0`; docs bucket is `jq/jquery_ui_spinner/2.1.x`.
- Upstream jQuery UI is end-of-life; use as a legacy compatibility bridge only.
