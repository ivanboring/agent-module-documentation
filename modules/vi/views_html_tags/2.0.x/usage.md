<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Views HTML Tags extends the list of HTML elements available in a Views field's style settings, so a field can be wrapped in the element the markup actually calls for.

---

Every Views field has "Customize field HTML" and "Customize field and label wrapper HTML" settings, offering a short list of elements — `div`, `span`, `h1` through `h6`, `p`, `strong`, `em` and a few more. That list omits most of the elements a semantic listing wants: `article` and `section` for a card, `time` for a date, `address` for contact details, `figure` and `figcaption` for an image with a caption, `mark`, `abbr`, `dl`/`dt`/`dd` for a definition list. Without them the choice is a `div` with a class and no meaning, or a template override per view. This module widens the list, configurable at its own settings page behind `administer views html tags`, version **2.0.3** on core `^10.3 || ^11`. The reason to care is not tidiness: **semantic elements are what assistive technology and search engines read**. A `time` element with a `datetime` attribute is a date a machine can parse; a `div` containing "12 March" is a string. An `article` marks a self-contained item in a list; a `div` marks nothing. The caveat is the matching one — **an element used wrongly is worse than a neutral one**, since a screen reader announcing a `heading` that is not a heading, or a `list` whose items are not list items, actively misleads. Widening the palette increases the chance of both outcomes, so the choice needs someone who knows what the elements mean.

---

- Wrap a Views field in an article element.
- Use a time element for a date field.
- Mark up contact details with address.
- Improve a listing's semantics.
- Use figure and figcaption in a view.
- Avoid a template override for markup.
- Improve accessibility of a listing.
- Add semantic meaning to a card.
- Use section elements in a view.
- Support structured data extraction.
- Improve search engine understanding.
- Mark up a definition list.
- Use a mark element for highlights.
- Improve a search results listing.
- Meet an accessibility audit requirement.
- Use abbr for an acronym field.
- Produce cleaner markup from Views.
- Support a semantic design system.
