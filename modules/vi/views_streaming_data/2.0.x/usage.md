<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Views Streaming Data adds CSV and JSON Views formats that stream the result set to the client instead of building the whole response in memory.

---

Exporting from a view works until the export is large, and then it fails in the most annoying way available: the request builds every row into a string, exhausts PHP's memory limit or the execution time, and returns a white screen after two minutes — with nothing partial to show for it. That threshold arrives sooner than people expect, because the whole rendered result set plus Drupal's own overhead has to fit at once. Streaming inverts it: rows are written to the output as they are produced, so memory stays flat regardless of row count and the browser starts receiving the file immediately, which also removes the "did it work?" pause that makes users click the button again. Version **2.0.0** on core `^10.0 || ^11.0`, depending on `csv_serialization`, core `rest` and `views`. Three things follow from streaming and are worth knowing. **The response starts before the query finishes**, so an error partway through arrives inside a file that has already begun downloading — there is no way to turn it into a clean error page, and the user gets a truncated file that looks complete. **Buffering defeats it**: a reverse proxy, an output filter or gzip compression that waits for the full body puts the memory back, on the proxy instead of PHP, so the whole chain has to be checked. And **access is still the view's**: streaming changes delivery, not authorisation, so an export view needs the same filters and permission checks as any other — a fast export of data the user should not have is worse, not better.

---

- Export a hundred thousand rows to CSV.
- Stream a large JSON export.
- Avoid memory exhaustion on export.
- Start a download immediately.
- Export a full content inventory.
- Provide a data feed from a view.
- Export orders for accounting.
- Stream a report to a client.
- Avoid a timeout on a large export.
- Export a member list.
- Feed a data warehouse from Views.
- Export search results in bulk.
- Provide a nightly export endpoint.
- Stream a log extract.
- Export taxonomy for analysis.
- Reduce export server load.
- Provide a large API response.
- Export product data for a partner.
