# Field Count Formatter — agent index

One field formatter that outputs the *number* of values in a multi-value field instead of the
values. No config page, no settings, no permissions, no dependencies beyond core.

Everything (the whole module is ~30 lines):
- Formatter plugin `count` ("Field count"), `src/Plugin/Field/FieldFormatter/Count.php`, extends
  `FormatterBase`.
- `@FieldFormatter(id = "count", field_types = {})` — empty `field_types` means it is available for
  **every** field type on *Manage display*.
- `viewElements()` returns `[['#markup' => $items->count()]]` (nested to keep the default field
  title rendering). No settings form; `settingsSummary()` = "Displays the number of items/count."
- Usage: on *Manage display*, set a multi-value field's Format to **Field count**.
