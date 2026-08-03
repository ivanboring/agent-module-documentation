Human Decimal Formatter is a tiny field formatter for core `decimal` fields that drops trailing zeros, so 3.00 renders as "3" while 3.23 still renders as "3.23".

---

The module provides one field formatter plugin, `human_decimal` (label "Human decimal",
`src/Plugin/Field/FieldFormatter/HumanDecimal.php`), which extends Drupal core's `DecimalFormatter`.
Its only override is `numberFormat()`: it inspects the value's fractional part and reduces the display
`scale` to the number of significant decimal digits actually present (0 when the value is whole),
then defers to `number_format()` using the inherited `decimal_separator` and `thousand_separator`
settings. There is no configuration of its own, no admin page (`configure` is null), no permissions,
no services, no schema — you simply select "Human decimal" as the formatter for a decimal field on
*Manage display*. It depends only on core `field`. The `.module` file just renders the README on the
module help page. Use it wherever trailing zeros look unnatural (prices, quantities, ratings) but you
still want full precision shown when the value genuinely has decimals.

---

- Display a decimal price as "3" instead of "3.00" when it has no cents.
- Show "3.5" for a value of 3.50 (one trailing zero trimmed) on a product field.
- Render quantities without forced trailing zeros on a catalog listing.
- Keep full precision ("3.23") when decimal digits are actually present.
- Format a rating/score field cleanly (e.g. "4" vs "4.00").
- Present measurement fields (weight, length) without noisy zeros.
- Swap core's Decimal formatter for a friendlier display on any decimal field.
- Apply per view mode (teaser vs full) via Manage display.
- Reuse core's decimal/thousand separator settings while trimming zeros.
- Improve readability of financial summaries and totals.
- Show percentages stored as decimals without trailing zeros.
- Format tax or discount rates only to the precision entered.
- Display statistical values compactly in reports built with fields.
- Provide cleaner numeric output in exported/rendered content.
- Use on multi-value decimal fields (each delta formatted independently).
- Avoid writing a custom formatter for the common "trim trailing zeros" need.
- Keep locale-aware separators while dropping insignificant decimals.
- Present coordinates or ratios without padding to full scale.
