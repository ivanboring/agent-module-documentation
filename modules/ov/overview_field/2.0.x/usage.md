<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Overview Field is a small field type whose allowed values are supplied by code: a select widget whose options come from `hook_overview_field_options_alter()`, so an editor picks a named "overview" and a module decides what that renders.

---

The pattern solves a recurring structural problem. A content type needs a slot where an editor chooses *which* dynamic listing appears — recent news, upcoming events, staff in this department — but the list of available listings is a developer concern, not an editorial one, and it changes with code rather than with content. Storing that choice in a plain text field means typos; storing it in a config-defined allowed-values list means a config change every time a developer adds one. This field type puts the option list behind an alter hook: modules register what they can render, the editor picks from the resulting select, and the formatter dispatches on the stored key. It is a deliberately thin piece of code — the field stores a 255-character string, the widget is a select with a "No overview" empty option, the formatter renders the value — and the `overview_field_example` submodule shows a working implementation. Version **2.0.2** on `^9 || ^10 || ^11`, depending on core `field`. Useful precisely because it is thin: it is the plumbing you would otherwise write, and no more.

---

- Let an editor choose a dynamic listing.
- Register listing options from code.
- Avoid typos in a listing key.
- Place a "recent news" block per page.
- Give developers an extension point.
- Choose an overview per node.
- Avoid config changes for new options.
- Dispatch rendering on a stored key.
- Provide a select of code-defined options.
- Build a flexible landing page slot.
- Let modules register their own overviews.
- Choose which staff list appears.
- Add an events listing to a page.
- Keep option lists in code.
- Support a modular page structure.
- Provide an empty "no overview" option.
- Replace a hand-rolled select field.
- Follow a documented example module.
