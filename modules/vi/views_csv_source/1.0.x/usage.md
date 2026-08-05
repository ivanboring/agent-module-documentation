<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Views CSV Source adds a Views query backend that reads rows from a CSV file instead of the database, so a spreadsheet — local, uploaded, or fetched over HTTP — can be listed, sorted, filtered and themed with the whole Views toolkit.

---

Views is Drupal's listing engine and it normally queries SQL. This module supplies an alternative query plugin (`src/Plugin/views/query/ViewsCsvQuery.php`, with `src/Query/Connection.php` and `src/Query/Select.php` behind it) that parses CSV via `league/csv ^9.27` and presents the columns as Views fields. The source is given as a URI and three forms are accepted: an `entity:file/ID` reference to an uploaded managed file, an `internal:` path relative to the docroot, or an `http(s)` URL fetched with Guzzle — the HTTP branch supports both GET and POST, with configurable headers and request body, so it can consume a CSV-returning REST endpoint as well as a static file. Remote responses are cached. There is a settings form at `/admin/config/user-interface/views-csv-source-settings` gated by `administer site configuration`, an event namespace for altering behaviour, and `views_csv_source.views.inc` for the Views integration. Because the source URI is a *view* setting, configuring it needs `administer views` — and that is the thing to understand before enabling this module, because the URI is not confined to the docroot and the file's contents become the view's rows. This module's local security notes cover what that implies.

---

- List a spreadsheet's rows through Views.
- Publish a CSV export from another system.
- Sort and filter a CSV without importing it.
- Consume a REST endpoint that returns CSV.
- Show an uploaded price list as a table.
- Theme CSV data with a Views template.
- Page through a large CSV.
- Combine CSV listings with site styling.
- Avoid a migration for read-only reference data.
- Refresh data by replacing one file.
- Expose an open-data CSV on a site.
- Filter a CSV by column value.
- Cache a remote CSV between requests.
- Provide a CSV-backed block.
- Send a POST request to fetch data.
- Set custom headers on the data request.
- Give editors a spreadsheet-driven listing.
- Prototype a listing before building a content type.
