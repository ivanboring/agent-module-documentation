<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Font Awesome Formatter for Int List renders an integer field as that many Font Awesome icons — the standard way to turn a stored 4 into four stars.

---

Ratings, difficulty levels, priority indicators and capacity meters are all stored as small integers and all want to be shown as a row of symbols. The value is a number; the display is a glyph repeated. Without a formatter this ends up as a Twig loop in a template override, written once per view mode and per field, and forgotten by whoever maintains it next.

This module makes it a Manage-display choice: pick the formatter on an integer field and choose the icon. `Plugin/Field/FieldFormatter/FAFormatterInt` is the whole module.

Two practical requirements. Font Awesome has to be loaded — this module renders the markup, it does not ship the icon library, so the theme or a Font Awesome module must provide it, and the missing-icon symptom is an empty space where the rating should be. And the icons are decorative repetitions of a number, so the accessible name matters: make sure the field's value is available to assistive technology rather than leaving a screen reader to encounter four unlabelled glyphs.

---

- Show a stored rating as a row of stars.
- Render a difficulty level as repeated icons.
- Display a priority as flags or bars.
- Show a capacity indicator as icons.
- Turn an integer field into a visual scale.
- Pick the icon per field display.
- Replace a Twig loop in a template override.
- Keep rating display consistent across view modes.
- Show a score in a teaser as icons.
- Render a review rating in a listing view.
- Use Font Awesome icons already loaded by the theme.
- Give editors a numeric field and visitors a graphic.
- Check that Font Awesome is actually loaded.
- Ensure the underlying number is available to screen readers.
- Show a satisfaction score as icons.
- Render a rating consistently in search results.
