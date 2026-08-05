<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Google Index API (google_index_api) — agent index

Sends `URL_UPDATED` / `URL_DELETED` notifications to **Google's Indexing API** via
`google/apiclient ^2.0`. Core requirement `^10.2 || ^11`.
Settings `/admin/config/services/google-index-api` and a bulk-update form, both behind
**`administer google index api`**.

Key facts:
- **Google's policy scopes the Indexing API to job postings and livestream content.** Using it for
  general pages is outside the documented scope regardless of whether the calls succeed. Establish
  that the site's use case qualifies before recommending it — the alternative for general content
  is a sitemap.
- Authentication uses a **Google service account key** (a JSON credential file). That is a real
  secret: keep it out of the docroot and out of exported configuration, and reference it by path
  from an environment variable per this repo's convention.
- `src/Batch/` handles bulk submission — the right path for a backlog, since the API is
  rate-limited per project per day.
- `composer.json` still declares `"php": ">=5.4.0"`, which is vestigial; the info file's
  `^10.2 || ^11` core requirement is what applies.
