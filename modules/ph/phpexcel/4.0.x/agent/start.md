<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# PHPExcel (phpexcel) — agent index

A thin Drupal service over **PhpSpreadsheet** for reading and writing spreadsheets. No module
dependencies; library via composer (`phpoffice/phpspreadsheet ^1 || ^2`). Config form
`/admin/config/development/phpexcel` (`configure: phpexcel.admin`, permission
**`administer phpexcel`**).

> Name caveat: the project is called *PHPExcel* for historical reasons but wraps
> **PhpSpreadsheet** — the original PHPExcel library is abandoned.

Key facts:
- Service **`phpexcel`** → `Drupal\phpexcel\PHPExcel`, args: `logger.channel.phpexcel`,
  `event_dispatcher`, `module_handler`, `config.factory`, `string_translation`.
  A dedicated logger channel `phpexcel` is registered.
- API:

  | Method | Purpose |
  |---|---|
  | `export(array $headers = NULL, array $data = [], $path = '', array $options = NULL)` | Write a spreadsheet |
  | `exportDbResult(StatementInterface $result = NULL, $path, array $options = [])` | Write straight from a DB statement (cheaper for large sets) |
  | `import($path, $keyed_by_headers = TRUE, $keyed_by_worksheet = FALSE, array $custom_calls = [])` | Read a spreadsheet back |
  | `setProperties($properties, $options)` | Document metadata |
  | `setHeaders($xls, &$headers, $options)` / `setColumns($xls, &$data, $headers, $options)` | Header/column handling |
  | `invoke($hook, $op, &$data, $phpexcel, $options, $column = NULL, $row = NULL)` | Dispatch alter hooks per cell/stage |

```php
$phpexcel = \Drupal::service('phpexcel');
$phpexcel->export(
  ['Title', 'Author', 'Created'],
  [['Page one', 'admin', '2026-01-01']],
  'public://report.xlsx'
);
$rows = $phpexcel->import('public://uploaded.xlsx', keyed_by_headers: TRUE);
```

Notes:
- `import()`'s `$custom_calls` invokes arbitrary PhpSpreadsheet methods during the read — powerful,
  but it means untrusted input should never reach that argument.
- Large exports are memory-hungry (PhpSpreadsheet builds in memory); prefer `exportDbResult()` and
  batch where possible.
