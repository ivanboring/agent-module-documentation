<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Views Entity Translations Links (views_entity_translations_links) — agent index

Views field showing **per-language add/edit translation buttons** for each row's entity. Depends on
**`config_rewrite`**. Package `Custom`. Version **2.1.0**.
Core requirement `^8.8 || ^9 || ^10 || ^11`.

**The problem is navigation at scale.** Drupal's translation overview is `/node/{nid}/translations`,
**one node at a time** — so a translator loops listing → node → Translations → find language → Add →
translate → save → back. Four languages and two hundred untranslated nodes is **thousands of clicks
spent on navigation**.

**Note the `config_rewrite` dependency** — that module alters other modules' shipped configuration
on install, a mechanism with wider reach than this feature suggests.

**Two things determine whether the field is useful:**
1. **It must reflect access.** Links should appear only where the user may actually create or edit
   that translation — a link to access-denied is worse than no link, especially in a listing where a
   translator judges their workload from what they see.
2. **Cache metadata must vary by user and by the row's translation state**, or the listing shows one
   translator the buttons another saw. In a workflow interface that is not cosmetic.
