<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Analyze Broken Links checks content for broken internal and external links.

---

Analyze Broken Links **checks content for broken internal and external links** — crawling links found in
content and reporting which return errors (404/timeouts), integrated with the Analyze module's reporting. It
depends on the Analyze module, provides its own permissions, in the Analyze package.

Use it to find dead links across your content. It is an admin/content-QA tool: the settings/run route requires
**`administer analyze settings`**, and the checker makes outbound HTTP requests to the URLs that appear in your
content (an admin-gated crawl — the request targets come from existing content links, and only admins can
trigger it, so the server-side-request surface is limited to trusted operators). It has no access-control role
beyond its permission. Run the broken-link analysis.

---

- Check content for broken links.
- Crawl internal + external links.
- Report 404s/timeouts.
- Depend on the Analyze module.
- Provide its own permissions.
- Integrate Analyze reporting.
- Require 'administer analyze settings'.
- Make outbound requests to content links.
- Limit the crawl to trusted admins.
- Have no access-control role beyond permission.
- Run the analysis.
- Handle broken-link checks.
- Find dead links.
- Configure the check.
- Check links.
- Handle the crawl.
- Report links.
- Scan links.
- Restrict the permission.
- Provide broken-link analysis.
