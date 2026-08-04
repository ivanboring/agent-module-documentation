Views filter select provides a single Views filter handler, `dropdownlist`, that turns a field filter into a select/dropdown whose options are the distinct values found in that field's database column.

---

The module ships one class, `DropdownList`, a Views filter plugin (`@ViewsFilter("dropdownlist")`) that extends core's `InOperator`. Instead of hard-coding an allowed-values list, its `getValueOptions()` runs a `SELECT <realField> FROM <table>` against the current database connection and uses the returned rows (keyed value=>value) as the filter's options, each passed through `t()`. Because it extends `InOperator`, the exposed filter renders as a multi-value select and matches with an IN condition. The module defines no hook_views_data mapping, no config schema, no settings form, and no permissions — you activate it by pointing an existing view filter at the `dropdownlist` plugin id (typically by editing the view configuration / views data for the field you want dropdown-ised). It is a tiny helper for the common case of "expose this column as a populated dropdown" without maintaining a static options list.

---

- Expose a text/string field as a select dropdown in a view instead of a free-text filter.
- Auto-populate the dropdown with the distinct values actually present in the column.
- Let visitors pick one or several values (IN matching) via a multi-select exposed filter.
- Filter a content list by a custom field's real stored values without hand-maintaining options.
- Turn a machine-name/code column into a chooser where every existing code is an option.
- Provide a dropdown for a base-table column that has no core "allowed values" list.
- Replace a "contains"/"is equal to" exposed text filter with a bounded select of known values.
- Use on admin views to filter rows by a status/category column's live value set.
- Build a faceted-style single dropdown when a full facets module is overkill.
- Keep filter options in sync with data automatically (options come from a live query each build).
- Apply to any Views base table by setting the filter handler's `plugin_id` to `dropdownlist`.
- Localise option labels (each value is run through `t()`), useful when values are translatable strings.
- Offer a compact select UI for report/dashboard views driven by custom tables.
- Filter a Views listing of a custom entity by one of its string properties as a dropdown.
- Provide an exposed dropdown for a column populated by an external/imported dataset.
