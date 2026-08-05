<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Exposed input token provides a global Views token containing the view's exposed input, so a header, footer or empty-text area can say what the visitor actually searched for.

---

The need appears on every search results page: "12 results for **kitchen**", or "No results for **kitchen** — try a broader term". Views can render a header and an empty-results area, but it has no token for the exposed filter values that produced the result, so the usual solutions are a preprocess function, a custom Views area plugin, or JavaScript reading the query string. This module supplies the token globally, in `views_exposed_input_token.module` — five files in total, with core `views` as the only dependency, PHP 8.1+ and core `^10.3 || ^11`. Because it is an ordinary token, it works in any Views area that accepts tokens. One thing to be deliberate about: the token's value comes from the request, so anywhere it is rendered must escape it — Views areas that pass tokens through the text format system do, and a custom template that emits it raw does not. Echoing search input is the textbook reflected-XSS shape, so it is worth confirming rather than assuming on whatever area the token is used in.

---

- Show the search term in a results heading.
- Say "no results for X" in the empty text.
- Include the filter value in a page title.
- Confirm to a visitor what was searched.
- Show active filters in a header.
- Improve search result pages.
- Give context on a filtered listing.
- Display the selected category.
- Improve analytics of search wording.
- Reduce confusion on an empty result set.
- Suggest alternatives naming the original term.
- Add exposed input to an RSS description.
- Show the filter used in a printed view.
- Give feedback on a faceted search.
- Improve accessibility of results context.
- Avoid a preprocess function for a common need.
- Show the term in a "did you mean" message.
- Reference exposed input in a footer.
