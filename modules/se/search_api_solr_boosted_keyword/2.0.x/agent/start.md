<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Search API Solr: Boosted Keyword (search_api_solr_boosted_keyword) — agent index

Field where editors enter **keywords with a boost level each**, so a document ranks higher for
chosen terms. Requires **`search_api_solr >= 4.x`** and core `field`.
`administer boosted keywords overview` gives a **site-wide view of what has been boosted** — the
part that keeps the feature governable. Version **2.0.0-beta3** — **beta**.
Core requirement `^8 || ^9 || ^10 || ^11`.

**Why per-document beats index-level tuning:** boosting the title field or recent content is blunt.
Relevance is often per-document — *this* page is the canonical answer for "password reset" though
the phrase appears twice; *that* product page should surface for its **old name**, which appears
nowhere in its text.

**Three things to hold in mind:**
1. **Boosting is a relevance signal, not a filter.** A boosted document ranks higher for a term it
   matches; it does **not** appear for terms it does not match at all. This is the commonest
   misunderstanding when someone asks why their keyword did nothing.
2. **Boosts compete.** When every editor boosts their own page the effect cancels. The overview
   permission exists for exactly this — **someone has to use it**.
3. **The field is index data** — a change needs a **reindex of that item** before it takes effect.
