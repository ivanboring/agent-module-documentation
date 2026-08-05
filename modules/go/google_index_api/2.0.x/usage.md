<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Google Index API notifies Google's Indexing API when content is published, updated or removed, so a page is crawled promptly instead of waiting for the next sitemap fetch.

---

Sitemaps are a hint that Google acts on at its own pace, which is fine for a blog and inadequate when the content is time-sensitive — a job posting that closes in three days, an event, a notice. The Indexing API exists for exactly that: it accepts `URL_UPDATED` and `URL_DELETED` notifications and prioritises those URLs. This module wires it in, with `src/Service` calling the API through `google/apiclient ^2.0`, `src/Batch` handling bulk submission, a settings form at `/admin/config/services/google-index-api` and a bulk update form alongside it, both behind `administer google index api`. Requirements are core `^10.2 || ^11`. The constraint to establish before recommending it is Google's own policy: the Indexing API is documented as being **for job postings and livestream content specifically**, not for general pages, and using it outside that scope is not supported behaviour however well the code works. The other practical point is authentication — the API needs a Google service account key, a JSON credential file that is a genuine secret and must not sit in the docroot or in exported configuration.

---

- Notify Google when a job posting is published.
- Request prompt crawling of a livestream page.
- Tell Google a page has been removed.
- Bulk-submit URLs to the Indexing API.
- Speed up indexing of time-sensitive content.
- Notify on publish through a batch job.
- Remove expired job postings from the index.
- Complement an XML sitemap.
- Reduce delay between publishing and appearing.
- Submit updated URLs after a migration.
- Restrict API configuration to administrators.
- Use a service account for authentication.
- Track which URLs were submitted.
- Support a recruitment site's indexing needs.
- Submit a backlog of URLs in batches.
- Notify on unpublish as well as publish.
- Integrate indexing into an editorial workflow.
- Improve visibility of short-lived content.
