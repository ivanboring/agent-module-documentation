jQuery UI ships the jQuery UI asset library (the JavaScript, CSS themes and images) as a contrib module so themes and modules can keep depending on it after it was deprecated and removed from Drupal core.

---

Drupal core historically bundled jQuery UI as `core/jquery.ui`, but jQuery UI is no longer actively maintained and has been marked End of Life by the OpenJS Foundation, so core deprecated it. This module re-provides the exact same asset library outside of core so existing code does not break. It declares base libraries (`jquery_ui/core`, `jquery_ui/widget`, `jquery_ui/mouse`, `jquery_ui/position`, `jquery_ui/locale`) in `jquery_ui.libraries.yml`, and dynamically declares the many widget/effect sub-libraries on behalf of companion sub-modules through a `hook_library_info_alter()` implementation that reads `jquery_ui.libraries.data.json`. There is no configuration UI, no permissions and no services; you simply install it and attach the libraries you need. Individual widgets (accordion, autocomplete, datepicker, dialog, draggable, slider, tabs, tooltip, etc.) are provided by separate companion projects such as jquery_ui_datepicker and jquery_ui_dialog that build on this base. The `locale` library wires jQuery UI datepicker into Drupal's localization for translated date regions. The maintainers strongly recommend migrating off jQuery UI to a maintained alternative rather than adding new dependencies on it. In practice this module exists to keep legacy themes, modules and custom code working during that transition.

---

- Restore the jQuery UI library after upgrading to a Drupal core version where it was removed.
- Replace `core/jquery.ui` references in a custom theme with `jquery_ui/core`.
- Replace `core/jquery.ui.widget` references with `jquery_ui/widget`.
- Provide the jQuery UI base position utility (`jquery_ui/position`) to a custom module's JS.
- Attach the jQuery UI mouse interaction base (`jquery_ui/mouse`) needed by draggable/sortable widgets.
- Keep a legacy contrib module that still depends on jQuery UI working without patching it.
- Serve the jQuery UI base CSS theme and its icon sprite images to a front end.
- Provide localized datepicker region settings via the `jquery_ui/locale` library.
- Act as the shared base dependency for companion widget modules like jquery_ui_datepicker.
- Support jquery_ui_dialog, jquery_ui_accordion, jquery_ui_tabs and other split-out widget modules.
- Give a custom module access to jQuery UI effects (fade, slide, bounce, explode) assets.
- Bridge a contributed module during migration away from jQuery UI to a modern library.
- Attach `jquery_ui/autocomplete` assets for a legacy autocomplete widget.
- Keep an existing datepicker field widget functioning after core deprecation.
- Supply jQuery UI sortable/draggable for a legacy drag-and-drop admin interface.
- Provide jQuery UI tabs markup and behavior to an old custom template.
- Let a distribution pin jQuery UI as an explicit, maintained-in-contrib dependency.
- Add the jQuery UI slider widget assets to a custom form element.
- Avoid deprecation warnings by depending on `jquery_ui/*` libraries instead of core ones.
- Ensure consistent jQuery UI version (1.13.x vendored) across a multisite platform.
