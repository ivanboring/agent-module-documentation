<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Views Entity Translations Links adds a Views field showing per-language buttons to add or edit each translation of a row's entity.

---

Managing translations at scale is a navigation problem. Drupal's translation overview lives at `/node/{nid}/translations`, one node at a time, so a translator working through a backlog opens a content listing, clicks a node, clicks Translations, finds their language, clicks Add, translates, saves, goes back to the listing, and repeats. On a site with four languages and two hundred untranslated nodes that is thousands of clicks spent on navigation. Putting the per-language links directly in the listing collapses it: the translator sees at a glance which languages exist for each row and goes straight to the one they need. Version **2.1.0** on `^8.8` through `^11`, depending on **`config_rewrite`** — which is worth noting, since that module alters other modules' shipped configuration on install, a mechanism with wider reach than the feature suggests. Two things determine whether the field is useful. **It must reflect access**: the add and edit links should appear only where the current user may actually create or edit that translation, and a link leading to access-denied is worse than no link, particularly in a listing where a translator is judging their workload from what they can see. And **the field is per row and per language**, so its cache metadata must vary by user and by the row's translation state — otherwise the listing shows one translator the buttons another translator saw, which in a workflow interface is not cosmetic.

---

- Add translation buttons to a content listing.
- See which languages a node has.
- Jump straight to adding a translation.
- Speed up a translation backlog.
- Show per-language edit links.
- Build a translator's work queue.
- Reduce navigation between translations.
- Show translation status in a view.
- Support a four-language site's workflow.
- Give translators a task list.
- Edit an existing translation from a listing.
- Show missing translations at a glance.
- Support a translation project's tracking.
- Reduce clicks per translated node.
- Build a multilingual editorial dashboard.
- Show translation coverage in a report.
- Support an agency's translation workflow.
- Prioritise untranslated content.
