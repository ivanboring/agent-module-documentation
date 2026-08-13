<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Better Links provides a replacement widget for core Link fields that adds configurable CSS class and link target (`_self`, `_blank`, ...) options.
---
The module ships a single field widget, `BetterLinksFieldWidget` (id `better_links_field_widget`), which extends core's `LinkWidget` for `link` field types. Per field-widget settings let a site builder choose how class and target are applied: a forced value, a value the editor picks from a curated select list, or manual entry. Class options default to Bootstrap-style button classes (`btn btn-primary`, etc.) that can be customized in the widget settings form.

The module has no routes, permissions, services, or database schema — it is purely a widget plugin configured through the field display/form settings UI. There is no server-side request handling beyond standard field widget rendering, so there are no access-control or endpoint concerns; the only editorial consideration is that link classes/targets are constrained to the configured options (select mode) or free text (manual mode).
---
- Add the "Better Link" widget to a link field's form display.
- Force a CSS class on all links in a field (e.g. `btn btn-primary`).
- Offer editors a curated list of CSS classes to choose from.
- Allow manual CSS class entry per link.
- Force a link target such as `_blank` on all links.
- Let editors pick a target from a select list.
- Style links as buttons without custom code.
- Customize the default class option list in widget settings.
- Apply consistent link styling across content types.
- Combine with theme CSS for branded button links.
- Use manual mode for one-off link styling.
- Configure separately per field and per form display.
- Keep call-to-action links visually consistent site-wide.
- Open external links in a new tab via a forced `_blank` target.
- Avoid teaching editors raw HTML/CSS for link styling.
- Reuse the widget on multiple link fields across content types.