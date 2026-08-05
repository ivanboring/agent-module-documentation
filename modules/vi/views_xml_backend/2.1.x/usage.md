<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Views XML Backend lets a view query an XML document instead of the database, so an external feed or API response can be listed, sorted, filtered and themed with Views.

---

The pattern is the same one `views_csv_source` follows for CSV (documented in wave 59): rather than importing external data into entities, query it where it lives and render it through Views, which brings paging, filtering, field handling and templating for free. For genuinely external reference data that changes upstream and does not belong in the site's content model — a partner's product feed, a public dataset, a legacy system's export — that is often the right trade. It depends on core `views` and targets `^10 || ^11`. Three things determine whether it works well in practice. **Where the XML comes from** matters most: a remote URL fetched at render time makes every page load depend on that host's availability and latency, so caching and a failure path need deciding before launch. **XML parsing** deserves care in general — external XML should never be parsed with entity expansion enabled, since that is the XXE class of vulnerability — so confirm how the module configures its parser if the source is not fully trusted. And **XPath** is the query language here, so filtering capability is bounded by what XPath can express against that document, not by what Views can express against SQL.

---

- List an XML feed through Views.
- Show a partner's product feed.
- Render an external dataset.
- Query XML with XPath in Views.
- Theme external data with Views templates.
- Avoid importing reference data.
- Page through a large XML document.
- Show a public dataset on a site.
- Combine XML data with site styling.
- Filter an XML feed by element.
- Display a legacy system's export.
- Build a listing from an API response.
- Avoid a migration for read-only data.
- Show a government open-data feed.
- Cache remote XML between requests.
- Sort XML records in a view.
- Support an integration listing.
- Render XML in a block.
