jQuery UI Touch Punch provides the Touch Punch library as a Drupal asset library so that jQuery UI mouse-based widgets (draggable, sortable, sliders, resizable, etc.) also respond to touch events on phones and tablets.

---

jQuery UI was removed from Drupal core and deprecated, but many contributed modules and themes still rely on its interactions, which are built for mouse events and do not work with touch. This module ships the small Touch Punch shim (`politsin/jquery-ui-touch-punch`) and exposes it as the `jquery_ui_touch_punch/touch-punch` asset library, depending on `jquery_ui/core`. Touch Punch monkey-patches jQuery UI's mouse widget so that `touchstart`/`touchmove`/`touchend` are translated into the simulated mouse events the widgets expect, making drag-and-drop, sorting, sliders and resizing usable on touch screens. It provides no configuration, permissions, or UI of its own — a theme or module simply attaches the library (`#attached['library'][] = 'jquery_ui_touch_punch/touch-punch'`) wherever touch support for jQuery UI is needed. It requires the jQuery UI module and the external Touch Punch JS to be present in `/libraries`. It is purely an infrastructure/compatibility library provider.

---

- Make jQuery UI draggable elements work on touch screens.
- Enable drag-and-drop sorting (`sortable`) on phones and tablets.
- Let jQuery UI sliders be dragged by touch.
- Make `resizable` handles respond to touch.
- Support touch on `droppable` drop targets.
- Support touch selection with jQuery UI `selectable`.
- Add the library to a custom module that uses jQuery UI interactions.
- Attach touch support from a theme for a jQuery UI-based widget.
- Restore touch functionality after upgrading off jQuery UI in core.
- Provide touch support for a color picker or date widget built on jQuery UI.
- Enable touch dragging in an admin drag-and-drop table that uses jQuery UI.
- Make a jQuery UI carousel/slider draggable on mobile.
- Support tablet users on a drag-to-reorder gallery.
- Keep a legacy contrib module's jQuery UI drag features working on mobile.
- Depend on it from another module's composer/info to guarantee the library.
- Ship the Touch Punch asset without hand-managing the JS file.
- Enable pinch/drag interactions for jQuery UI components on kiosks/touch displays.
- Provide consistent pointer behavior for jQuery UI across desktop and touch.
- Fix unresponsive jQuery UI sliders reported by mobile users.
- Add mobile drag support to a decoupled admin tool that still uses jQuery UI.
