<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Search API Saved Searches lets a visitor save a search and be emailed when new results match it — the "alert me about new listings like this" feature familiar from job boards and property sites.

---

The module models a saved search as a content entity (`search_api_saved_search`) with its own type entity governing behaviour, so different kinds of saved search can have different notification schedules, activation rules and index bindings. Its routing is a good example of doing entity access properly: every route — view, edit, delete and **activate** — is gated by `_entity_access` on the specific operation rather than a blanket permission, and `activate` is its own operation, which matters because activation is how an anonymous visitor's saved search is confirmed by email. Permissions are partly generated: `administer search_api_saved_searches` is declared, and `Permissions::bySavedSearchType()` adds per-type permissions at runtime through a `permission_callbacks` entry. A `search_api_saved_searches.plugin_type.yml` declares a notification plugin type, so how alerts are delivered is extensible. Its `.info.yml` sets `lifecycle: stable`, an explicit maintainer signal. Two operational realities to plan for: notifications run on cron and re-execute saved queries, so the cost scales with the number of saved searches; and anonymous saved searches mean storing email addresses, which is personal data with a retention question and needs the activation flow to prevent someone signing up an address they do not own.

---

- Let visitors save a search and be alerted to new results.
- Email a job seeker when matching vacancies appear.
- Notify buyers about new property listings.
- Bookmark a faceted search for later.
- Send a daily or weekly digest of new matches.
- Let anonymous visitors subscribe by email.
- Confirm an anonymous subscription by activation link.
- Offer different alert schedules per search type.
- Let users manage their saved searches.
- Drive re-engagement with new content.
- Alert staff to new internal submissions.
- Extend delivery with a notification plugin.
- Give registered users a saved-search list.
- Reduce manual checking of a listings page.
- Notify on new results in a specific category.
- Support a marketplace's alert feature.
- Provide alerts without a separate mailing tool.
- Track which searches visitors care about.
