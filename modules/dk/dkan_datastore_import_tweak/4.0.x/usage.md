<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
DKAN Datastore Import Tweak exposes CSV parser options that core DKAN does not surface.

---

An admin form at `/admin/dkan/parser-settings` (permission `administer site configuration`) lets you pick the delimiter (comma, semicolon, whitespace) and quoting character (`"` or `'`). A `ParserEventsSubscriber` listens for DKAN's `ImportService::EVENT_CONFIGURE_PARSER` event and injects those two settings into the CSV parser configuration at import time. An optional submodule, `dkan_datastore_mysql_import_tweak`, decorates the MySQL importer factory so the same configured delimiter is applied to `datastore_mysql_import`'s `LOAD DATA` path.

There are no anonymous or public endpoints — the only route is the permission-gated settings form, and the delimiter/quote come from fixed select options (not free-form input), so they do not reach the LOAD DATA statement as injectable strings. Setup: enable the module, set the delimiter/quote to match your source files, and (if you use the MySQL importer) also enable the submodule.

---
- Import semicolon-delimited CSVs into a DKAN datastore.
- Import whitespace-delimited data files.
- Choose single-quote as the CSV quoting character.
- Match the parser to a non-standard data supplier's format.
- Fix broken imports caused by the wrong default delimiter.
- Apply the delimiter to the MySQL LOAD DATA importer via the submodule.
- Keep parser settings in exportable config.
- Restrict parser configuration to site administrators.
- Re-import a dataset after correcting the delimiter.
- Standardise parsing across multiple datastore resources.
- Support European-style `;`-separated exports.
- Avoid patching DKAN core to change CSV parsing.
- Set the quote character to handle apostrophes in data.
- Configure once and have all datastore imports inherit it.
- Pair the tweak submodule with `datastore_mysql_import`.
- Diagnose column-splitting issues by switching delimiters.
- Keep default comma/double-quote when no override is needed.
- Roll parser config between environments via config sync.
