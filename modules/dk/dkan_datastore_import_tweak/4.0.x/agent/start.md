<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# DKAN Datastore Import Tweak (dkan_datastore_import_tweak) — agent index

**Configures the CSV delimiter and quote character used by DKAN datastore imports.**

- **Version:** 4.0.x · **Core:** ^10 || ^11 · **Depends on:** dkan_datastore
- **Route:** `dkan_datastore_import_tweak.parser_settings` → `/admin/dkan/parser-settings` (permission `administer site configuration`).
- **Mechanism:** `ParserEventsSubscriber` handles `ImportService::EVENT_CONFIGURE_PARSER` and sets `delimiter`/`quote` from config `dkan_datastore_import_tweak.parser_settings`.
- **Submodule:** `dkan_datastore_mysql_import_tweak` decorates the MySQL import factory (`MysqlImport`) to apply the delimiter to the `LOAD DATA` path.
- **Security:** single admin config route; delimiter/quote are fixed select options (comma/semicolon/space, `"`/`'`), not free text, so no SQL/parse injection into LOAD DATA; no anonymous or import-trigger endpoints of its own.
