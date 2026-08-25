# Field Count Formatter (field_count_formatter) — agent index

One field formatter that outputs the *number* of values in a field (`$items->count()`) instead of
the values themselves — most useful on multi-value fields. Trivial module (~30 lines total): no
config page (`configure` null), no settings form, no permissions, no services, no routes, no config
schema, no plugin types. Depends only on Drupal core.

Everything you need:
- **Formatter plugin:** `count` (label "Field count"),
  `src/Plugin/Field/FieldFormatter/Count.php`, extends core `FormatterBase`.
- **Made universal by a hook:** `hook_field_formatter_info_alter()` in
  `field_count_formatter.module` sets `$info['count']['field_types']` to *all* field-type ids (the
  plugin's own `@FieldFormatter` annotation declares an empty `field_types = {}`), so the formatter
  is offered for **every** field type on *Manage display*.
- **Use it:** on *Manage display* for any entity/bundle, set a field's Format to **Field count**.
  Also works on a Views field's format settings. No options to set.
- **Logic:** `viewElements()` returns `[['#markup' => $items->count()]]` — nested inside element 0 so
  the default field-title rendering is preserved. `settingsSummary()` = "Displays the number of
  items/count." Empty fields render `0`.
- **Depends on:** core only. **Core:** `^9 || ^10 || ^11`. **Package:** Other.
- **No security surface.**
