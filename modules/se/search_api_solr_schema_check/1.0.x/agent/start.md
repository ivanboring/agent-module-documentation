<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Search API Solr Schema Check (search_api_solr_schema_check) — agent index

Verifies each **Search API Solr** server's **live schema** matches a **canonical schema** you define
(e.g. the one in git). Version **1.0.0**. Core `^10.1 || ^11`. Depends on `search_api_solr`.

**Problem it solves:** schema drift is silent — search keeps working while results go subtly wrong
(a field stops being searchable, a boost disappears). This surfaces the gap between "schema we
intend" and "schema Solr is running" as a check you run on deploy/schedule and read like a failing
test.

**Diagnostic, not a fix** — it reports the difference; reconciliation is still deploying the right
schema to Solr.