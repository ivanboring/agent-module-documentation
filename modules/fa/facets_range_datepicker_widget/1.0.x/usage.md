<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Facets Range Datepicker Widget adds a datepicker-based range widget for the Facets module, so a date facet can be filtered with a from/to calendar picker.

---

Faceted search over dated content — events, articles by publish date, records by timestamp — wants a date-range control, not a list of individual date links. The Facets module supports range facets, but the default widgets are text or sliders; a calendar picker is the natural interface for choosing a date span. This widget provides that: a datepicker range control for a Facets range facet, so a visitor picks a from and to date and the facet narrows the results.

It plugs into Facets as a widget, so it needs a Search API index with a date field exposed as a range facet. It is a UI enhancement with no security surface of its own — it renders a picker over what the facet already exposes.

For a search UI over dated content it is the right control. Confirm the underlying facet is a range facet on a date field and that the index exposes the field, since the widget presents what Facets is configured to provide.

---

- Add a datepicker to a date facet.
- Filter search by a date range.
- Pick a from/to date span.
- Improve a dated-content search UI.
- Use a calendar for facet filtering.
- Provide a range date widget.
- Filter events by date range.
- Narrow results by publish date.
- Add a date-range facet control.
- Replace a date list with a picker.
- Filter records by timestamp span.
- Present a calendar range control.
- Configure a range facet first.
- Expose a date field to the index.
- Improve faceted date search.
- Select a date window.
- Filter archives by date.
- Provide an intuitive date facet.
- Search within a date range.
- Enhance the Facets UI.