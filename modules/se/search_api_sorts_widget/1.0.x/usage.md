<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Search API Sorts Widget presents Search API Sorts as a form widget — a dropdown or radio set — instead of the list of links the parent module renders.

---

`search_api_sorts` supplies the sorting mechanism for a Search API search page and renders the options as links: relevance, date, title, each a separate anchor with the current one marked. That works and it looks like nothing else on the page, because every other search control — the keyword box, the facets, the items-per-page selector — is a form element. Visitors read a row of links as navigation and a dropdown labelled "Sort by" as a control, which is why every search interface they have used elsewhere presents sorting as a select. This module supplies that presentation, requiring `search_api_sorts` and core `block`, with per-index and per-display configuration reached from the Search API index pages under `administer search_api`, plus its own `administer search_api_sorts_widget` permission. Version **1.0.0-beta5** — a beta — on core `^10 || ^11`. Two implementation details to check, since they are what separates a working sort control from an annoying one. **Submission without JavaScript**: a select that only sorts when a script fires needs a visible submit button as a fallback, or the control is dead for anyone the script did not reach. And **URL state**: the chosen sort must be in the query string, so a sorted result page can be linked, bookmarked, shared and returned to with the back button — a sort held only in the session breaks all four and produces the classic complaint that going back loses your place.

---

- Present search sorting as a dropdown.
- Replace sort links with a select.
- Match sorting to other search controls.
- Improve a search page's usability.
- Add a "Sort by" control.
- Present sorts as radio buttons.
- Configure sorts per search display.
- Improve mobile search sorting.
- Reduce clutter on a results page.
- Make sorting look like a control.
- Support a familiar search interface.
- Add sorting to a facet sidebar.
- Place the widget as a block.
- Improve a catalogue's sort options.
- Keep sort state in the URL.
- Support a product listing's sorting.
- Improve a document search interface.
- Standardise search page controls.
