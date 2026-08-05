<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Content Snippets stores small pieces of editable content as configuration, with separate permissions for defining a snippet and for editing its content.

---

Every site has text that is neither a page nor code: a strapline, a legal footnote, a phone number that appears in four places, the sentence above a form, an out-of-hours notice. Hard-coded in a template it needs a deployment to change; as a custom block it is editable and heavy for one sentence and easy to lose track of; duplicated in several places it eventually disagrees with itself. This module gives those a home, and its distinguishing feature is the **permission split**: `administer content snippets` defines which snippets exist, while `edit content snippets` — described as "generally for content editors" — changes what they say. That separation is exactly right for the case, because *which* snippets exist is a structural decision and *what they say* is an editorial one, and conflating them is why the block-based workaround goes wrong. Version **2.1.0** on `^8` through `^11`. The trade to settle before adopting it is the one this campaign has recorded for `text_block`, `custom_markup_block` and `texts`: **snippets stored as configuration deploy with the codebase**, so they are reviewable in a diff and are overwritten by a configuration import — which means an editor's change on production is lost at the next deployment unless the workflow accounts for it. That is either exactly what you want, for wording that is a design decision, or exactly what you do not, for wording that is editorial. Decide which, and check whether the module ignores or exports the snippet bodies.

---

- Store a strapline in one place.
- Edit a legal footnote without a deploy.
- Keep a phone number consistent.
- Manage an out-of-hours notice.
- Separate defining snippets from editing them.
- Let editors change wording safely.
- Avoid duplicated text across pages.
- Store form help text centrally.
- Manage a cookie notice's wording.
- Keep a call-to-action consistent.
- Provide reusable text to templates.
- Manage a disclaimer in one place.
- Let content editors update a notice.
- Reduce template edits for copy changes.
- Keep marketing copy reviewable.
- Update an address site-wide.
- Manage seasonal messaging.
- Provide snippets to several templates.
