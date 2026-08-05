<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Search API Sorts Widget (search_api_sorts_widget) — agent index

Renders **Search API Sorts** as a form widget (dropdown / radios) instead of the parent module's
list of links. Requires `search_api_sorts` and core `block`. Configuration hangs off the Search API
index pages (`/admin/config/search/search-api/index/{index}/sorts_widget`) behind
`administer search_api`; also defines `administer search_api_sorts_widget`.
Version **1.0.0-beta5** — beta. Core requirement `^10 || ^11`.

**The usability argument:** every other control on a search page — keyword box, facets,
items-per-page — is a form element. Visitors read a row of links as **navigation** and a select
labelled "Sort by" as a **control**, which is how every search interface they have used elsewhere
presents it.

**Two implementation details to check — they separate a working sort control from an annoying
one:**
1. **Submission without JavaScript.** A select that only sorts when a script fires needs a visible
   submit button as a fallback, or the control is dead for anyone the script did not reach.
2. **URL state.** The chosen sort must live in the **query string** so a sorted page can be linked,
   bookmarked, shared and returned to with the back button. A sort held only in the session breaks
   all four — the classic "going back loses my place" complaint.
