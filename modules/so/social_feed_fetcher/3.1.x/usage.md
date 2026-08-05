<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Social Feed Fetcher pulls posts from social platforms into Drupal nodes, so a social wall is built from content the site owns rather than from an embedded widget.

---

The requirement — "show our Instagram on the homepage" — has two implementations and they differ in almost every respect. **An embedded widget** is a third-party script that loads on page view, tracks the visitor, needs consent, and disappears the day the platform changes its embed. **Fetching into nodes** stores the posts locally: they are cached, themed like the rest of the site, indexed by the site's own search, available offline from the platform, and they keep working when the API does not. This module does the second, storing fetched posts as content and depending on core `node`. Version **3.1.1** on core `^10 || ^11`. The reality to plan around is that **social platform APIs are hostile to this use case** and have become more so: Twitter/X closed free API access, Instagram requires a Facebook app review and a business account, and Facebook's page tokens expire and must be refreshed. So the ongoing cost is not the module, it is the credentials — each platform needs an app registered, tokens stored (in a **Key entity**, from an environment variable, never in exported configuration) and a person who notices when a token expires, because the failure is a feed that quietly stops updating rather than an error anyone sees. Two further points: **imported posts are other people's content**, so check the platform's terms before republishing at length, and **fetched HTML is untrusted input** that must go through a text format, not straight into a template.

---

- Show an Instagram feed on a homepage.
- Build a social wall from stored posts.
- Avoid third-party embed widgets.
- Keep social content after an API change.
- Index social posts in site search.
- Theme social posts like site content.
- Avoid a consent requirement for embeds.
- Archive a campaign's social posts.
- Show Facebook page updates.
- Cache social content locally.
- Reduce page weight from embeds.
- Curate imported social posts.
- Show posts offline from the platform.
- Aggregate several social sources.
- Build a news wall from social feeds.
- Keep a record of published posts.
- Show social content in a view.
- Support an events social feed.
