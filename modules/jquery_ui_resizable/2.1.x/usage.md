jQuery UI Resizable re-supplies the jQuery UI Resizable interaction as a Drupal asset library, for modules and themes that still depend on it after jQuery UI was removed from Drupal core.

---

Drupal core deprecated and removed the bundled jQuery UI libraries, but some contrib and custom code still relies on individual jQuery UI widgets. This module (part of the jQuery UI family, alongside the `jquery_ui` base module) provides the **Resizable** interaction as the asset library `jquery_ui_resizable/resizable`, sourced through the `jquery_ui` module's asset definitions. It contains no configuration, PHP services, routes, or UI — it is purely a JavaScript library shim. Code that needs resizable behavior declares a dependency on `jquery_ui_resizable/resizable` in its own `*.libraries.yml` (or attaches it via `#attached`), then calls `.resizable()` in its JS. It depends on the `jquery_ui` base module (>= 8.x-1.7). Use it only as a compatibility shim; new code should prefer native CSS `resize` or modern JS where possible.

---

- Make a `<div>` or panel resizable by dragging its edges/handles.
- Provide legacy jQuery UI resizable support to a contrib module after core removed it.
- Attach `jquery_ui_resizable/resizable` as a library dependency in a module's `*.libraries.yml`.
- Enable resizable textareas or containers in a custom admin UI.
- Add resize handles to a draggable dialog or panel.
- Let users resize a preview pane in a split-view interface.
- Resize an image container interactively in an editor widget.
- Constrain resizing to a min/max width and height via the widget options.
- Preserve aspect ratio while resizing an element.
- Make a map or canvas element user-resizable.
- Add resizable columns to a custom layout builder tool.
- Resize a sidebar or drawer in a custom theme component.
- Provide a resizable code/preview area in a developer tool.
- Keep an older theme's resizable interactions working on Drupal 10/11.
- Attach the library from a render array via `#attached` libraries.
- Resize a WYSIWYG or embed container in content editing.
- Give users control over the height of a comment/text input box.
- Build a resizable modal window in a custom module.
- Resize dashboard widgets in a custom reporting UI.
- Satisfy a transitive jQuery UI Resizable dependency of another library.
- Ship resizable behavior without vendoring jQuery UI yourself.
