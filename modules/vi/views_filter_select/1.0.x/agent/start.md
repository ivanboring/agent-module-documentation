# Views filter select — agent index

One Views filter handler, `dropdownlist`, that renders a field filter as a select and populates
its options from the distinct values in that column's DB table. Depends on core `views`. No
config schema, no permissions, no Drush, no plugin managers, no settings form.

- **How to attach the `dropdownlist` filter to a view and how options are built** →
  [configure/filter.md](configure/filter.md)

Key facts:
- `DropdownList extends InOperator` (`@ViewsFilter("dropdownlist")`) → exposed as a multi-value
  select with IN matching.
- `getValueOptions()`: `db->select($this->table)->fields($this->table, [$this->realField])
  ->execute()->fetchAllKeyed(0,0)`, then each value is `t()->render()`ed. `$table`/`$realField`
  come from the Views handler definition (admin/views config), not from request input.
- No `hook_views_data` alter is provided; you opt a field's filter into it by setting the
  handler `plugin_id: dropdownlist` in the view config (or via your own views_data).
