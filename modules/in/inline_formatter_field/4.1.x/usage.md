<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Inline Formatter Field combines several fields into a single rendered output using a template, with submodules for entity displays and for Views.

---

A great deal of front-end work is joining fields that belong together in the output but are separate in the data model. A location is a street, a city and a postcode that should read as an address. A price is an amount and a currency. A byline is an author reference and a date. A dimension line is width, height and a unit. Drupal renders each field independently, wrapped in its own markup, so producing "£24.99 including VAT" or "London, EC1A 1BB" means either a template override, a computed field, or a field group with CSS fighting the wrappers. This module makes the combination a **display setting** with a template, and its two submodules extend the same idea to entity view displays and to Views fields, which is where the same problem appears. Version **4.1.0** on core `^10 || ^11`. Two things worth attaching. **Combined output needs its own empty-handling**: a template joining three fields with commas produces stray punctuation when one is empty, which is the commonest visible bug in this pattern — so decide what an absent value does before writing the template. And **combining is presentation, not data**: the fields remain separate for search indexing, JSON:API consumers and Views filtering, which is usually the desired outcome and occasionally a surprise for someone expecting the combined string to be queryable.

---

- Render an address from separate fields.
- Combine amount and currency into a price.
- Build a byline from author and date.
- Join width, height and unit.
- Avoid a template override for two fields.
- Render a name from title and surname.
- Combine fields in a Views listing.
- Build a compact metadata line.
- Render a date range inline.
- Join fields with separators.
- Build a location summary.
- Combine fields in a teaser.
- Render a citation from parts.
- Avoid a computed field for display.
- Build a specification line.
- Combine fields in a search result.
- Render contact details together.
- Join fields with custom markup.
