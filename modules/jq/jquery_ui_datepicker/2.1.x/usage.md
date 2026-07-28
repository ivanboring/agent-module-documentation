jQuery UI Datepicker packages the (removed-from-core) jQuery UI Datepicker asset library as a Drupal library other modules and themes can depend on and attach.

---

jQuery UI was deprecated and progressively removed from Drupal core, so any module or theme that still relies on the `jquery.ui.datepicker` widget needs the library provided elsewhere. This module supplies exactly that: it defines a Drupal asset library for the jQuery UI Datepicker component and depends on the base `jquery_ui` module (which vendors the core jQuery UI files). It has no configuration UI, no permissions, no services and no PHP API of its own — you enable it and then attach its library from a render array, form element, or a theme's `*.libraries.yml`. This keeps legacy datepicker functionality working on Drupal 9.2+, 10 and 11 without pinning the whole site to core's removed copy. It is a lightweight compatibility shim, typically pulled in as a dependency by other contrib modules rather than installed directly. Because it is a thin library wrapper, upgrades mostly track the underlying `jquery_ui` package.

---

- Keep a legacy jQuery UI datepicker working after core removed it.
- Provide the `#datepicker` behavior for a custom form date field.
- Attach the datepicker library from a module's render array via `#attached`.
- Depend on it from another contrib module that needs a datepicker.
- Add a calendar popup to a custom JavaScript widget.
- Satisfy a theme that still calls `$.fn.datepicker()`.
- Support date selection UI on Drupal 9.2/10/11 without core's copy.
- Provide the asset for a Views exposed date filter that uses jQuery UI.
- Enable inline calendar pickers in an admin form.
- Back a contrib module (e.g. an older date/calendar module) that requires it.
- Attach the library from `hook_page_attachments()` for site-wide availability.
- Reference the library in a theme `*.libraries.yml` dependency.
- Localize the datepicker via the bundled jQuery UI i18n assets.
- Migrate a Drupal 7/8 feature relying on jQuery UI datepicker forward.
- Avoid bundling your own copy of jQuery UI in a custom module.
- Provide date range selection UIs built on the jQuery UI widget.
- Add a datepicker to a custom Form API element type.
- Keep contributed webform/date widgets functional during upgrades.
- Share one vendored jQuery UI copy across many modules via `jquery_ui`.
- Ensure consistent datepicker markup/styling across a legacy site.
