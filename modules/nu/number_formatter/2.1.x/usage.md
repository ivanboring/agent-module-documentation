<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Number Formatter turns number display settings into reusable `number_format` configuration entities, and provides a field formatter that applies a chosen one.

---

Core's number formatters keep their settings inside each field's display configuration. That is fine for one field and unmanageable for thirty: a site with prices, quantities, percentages and measurements ends up repeating the same decimal count, separators, prefix and suffix in every view mode, and a change to house style means editing all of them. This module inverts that — define the format once as a config entity, then point as many fields at it as you like.

The payoff is consistency and a single place to change it. Define "Currency (EUR)", "Percentage", "Quantity" and "Measurement" once; apply them across content types and view modes; adjust the format when the style guide changes and every field follows. Because formats are configuration entities they export, deploy and diff like anything else in config, and they are addressable from code if something needs to render a number the same way outside a field.

The collection route is `entity.number_format.collection`, which is where the formats are managed. The module's own footprint is small — one formatter plugin and the entity type — and it declares core support through `^12`, so it is not a module you will be replacing at the next major.

---

- Define a reusable number format once.
- Apply the same currency format across many fields.
- Change house number style in one place.
- Set decimal places consistently for prices.
- Configure thousands and decimal separators per format.
- Add a prefix or suffix to a number format.
- Format percentages consistently sitewide.
- Format quantities differently from prices.
- Export number formats with site configuration.
- Review a number format change in a config diff.
- Apply a format to a field in a specific view mode.
- Keep a teaser's number formatting in step with the full display.
- Format measurements with a unit suffix.
- Replace repeated per-field formatter settings.
- Give editors a named format rather than raw settings.
- Reuse a format from custom rendering code.