<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
LLMs.txt Generator builds an `/llms.txt` file **automatically from the site's content**, rather than having an administrator write and maintain it by hand.

---

This is the second llms.txt module in the campaign and the distinction matters: `llmstxt` (wave 62) stores hand-written content as configuration and serves it, while this one generates the file from the site — so the listing of important pages stays current as content changes rather than going stale the week after it is written. Configuration is at `/admin/config/search/llms-txt-generator` behind a dedicated `administer llms txt generator` permission (marked `restrict access: true`), with the file served at `/llms.txt`. Core requirement is `^9 || ^10 || ^11` and the release is **1.0.0-alpha1**. Two caveats belong with any recommendation. The convention is a **proposal, not a standard**, with partial adoption and no obligation on any crawler to fetch or honour it; and it is advisory in the same way `robots.txt` is, so it expresses a preference and enforces nothing — a site that needs to prevent AI scraping needs access control, not this. The generation angle adds a third: an automatically generated listing should be checked for what it includes, since the point of the file is curation, and a generator that lists everything provides no more guidance than a sitemap.

---

- Generate llms.txt from site content.
- Keep the file current as content changes.
- Point AI crawlers at key pages.
- Avoid maintaining llms.txt by hand.
- Curate what a model sees first.
- Serve the file at the conventional path.
- Configure which content is listed.
- Follow an emerging AI convention.
- Complement robots.txt.
- Describe a documentation site automatically.
- Update the file without a deployment.
- Restrict configuration to a permission.
- Regenerate after a content restructure.
- Describe an API reference for retrieval.
- Improve AI discoverability.
- Reduce manual SEO maintenance.
- Generate from selected content types.
- Experiment with AI-facing metadata.
