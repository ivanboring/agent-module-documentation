<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Language Selection Page (language_selection_page) — agent index

Adds a **language negotiation method** that presents a selection page when the methods above it have
not decided. Configure in the negotiation chain at
`/admin/config/regional/language/detection`. Depends on core `locale` and `path_alias`.
Version **3.0.0**. Core requirement `^10 || ^11`.

**Being a negotiation method is the right shape** — it slots into the existing chain and runs only
as a fallback, rather than being a redirect bolted on top.

**Why guessing fails:** every core method can be wrong — a URL with no prefix, a browser advertising
a language the site lacks, a shared computer whose previous user chose differently, a visitor in one
country reading another's language. Asking beats guessing where the languages are **not translations
of each other**, where the language carries **legal content**, or where audiences genuinely differ.

**Two things to weigh:**
1. **An interstitial costs visitors.** A page between the click and the content raises bounce and
   dilutes the referral — worst for the people it is meant to help, who arrive from a search result
   **already in their language** and are asked to confirm it. Place it **below** the URL and account
   methods, never above.
2. **Keep search engines away from it.** A crawler that hits the selection page indexes **it**
   instead of the content — keep it out of the sitemap, and ensure URL-prefixed language pages stay
   **directly reachable** without passing through it.
