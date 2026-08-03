# Human Decimal Formatter — agent index

One field formatter that trims trailing zeros from core `decimal` fields (3.00 → "3", 3.23 → "3.23").
Trivial module: no config page (`configure` null), no permissions, no services, no schema, no plugin
types, no hooks to implement. Depends only on core `field`.

Everything you need:
- **Formatter plugin:** `human_decimal` (label "Human decimal"),
  `src/Plugin/Field/FieldFormatter/HumanDecimal.php`, extends core `DecimalFormatter`. Applies to
  field type `decimal`.
- **Use it:** on *Manage display* for any entity/bundle with a decimal field, set the field's Format
  to "Human decimal". No settings of its own beyond the inherited decimal/thousand separators.
- **Logic:** overrides `numberFormat()` — reduces `scale` to the count of significant fractional
  digits (0 for whole numbers), then `number_format()` with the inherited separators.
- **No security surface.**
