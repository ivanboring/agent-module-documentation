jQuery UI Slider packages the (removed-from-core) jQuery UI Slider asset library as a Drupal library that other modules and themes can depend on and attach.

---

jQuery UI was deprecated and progressively removed from Drupal core, so code that still uses the `jquery.ui.slider` widget must obtain it elsewhere. This module provides a Drupal asset library for the jQuery UI Slider component and depends on the base `jquery_ui` module that vendors the underlying jQuery UI files. It carries no configuration UI, no permissions, no services and no PHP API — you enable it and attach its library from a render array, Form API element, or a theme's `*.libraries.yml`. That keeps slider/range-slider interactions working on Drupal 9.2+, 10 and 11 without depending on core's removed copy. It is a small compatibility shim, usually pulled in as a dependency by another contrib module rather than installed on its own. As a thin wrapper, its releases mostly follow the `jquery_ui` package it builds on.

---

- Keep a legacy jQuery UI slider working after core removed it.
- Add a draggable value slider to a custom form element.
- Build a numeric range filter with two slider handles.
- Attach the slider library from a module render array via `#attached`.
- Depend on it from another contrib module needing a slider.
- Provide a volume/opacity/zoom style control in a custom widget.
- Support price-range sliders on a faceted search or Views filter.
- Satisfy a theme that still calls `$.fn.slider()`.
- Run slider UIs on Drupal 9.2/10/11 without core's copy.
- Attach the library from `hook_page_attachments()` for global use.
- Reference the library as a dependency in a theme `*.libraries.yml`.
- Back an older contrib module that requires jQuery UI slider.
- Create a step-based rating or scoring input with a slider.
- Migrate a Drupal 7/8 feature using jQuery UI slider forward.
- Avoid bundling your own copy of jQuery UI in a custom module.
- Provide an interactive image-comparison or before/after slider control.
- Add a slider to a custom Form API element type.
- Share one vendored jQuery UI copy across modules via `jquery_ui`.
- Keep contributed widgets that use the slider functional during upgrades.
- Ensure consistent slider markup/behavior across a legacy site.
