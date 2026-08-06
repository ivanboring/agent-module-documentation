<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Block Condition Published adds a block visibility condition based on whether the entity being viewed is published.

---

Core's block visibility conditions cover paths, content types, roles, languages and the front page — and not publication status, which turns out to be a real gap once a site has an editorial workflow. The cases are specific and recurring: a "this page is a draft" notice that should appear only on unpublished content; a set of social sharing buttons that should not appear on something not yet public; an editorial toolbar block useful only while reviewing; a "last updated" notice appropriate to published pages and misleading on drafts. Without the condition the alternatives are a preprocess function checking status, a duplicated block with path conditions that go stale, or showing the block everywhere and accepting that it is sometimes wrong. Version **1.0.0-beta1** — a **beta** — on core `^9 || ^10 || ^11`. Two things to keep straight. **A visibility condition is presentation, not access**: a block hidden on unpublished content is not rendered, which is genuinely not sent — but it says nothing about whether the visitor should be seeing the unpublished entity at all, which is entity access's job, so this is never a way to protect anything. And **the condition adds a cache context**: block visibility depending on the current entity's status means the block's cacheability must vary by that entity, or the first rendering is reused — and the failure here is visible in the wrong direction, since a draft notice cached onto a published page is the kind of thing a client notices before you do.

---

- Show a draft notice on unpublished pages.
- Hide sharing buttons on drafts.
- Show an editorial block during review.
- Hide a "last updated" notice on drafts.
- Show a preview warning block.
- Hide a call to action on unpublished content.
- Show a moderation reminder.
- Hide comments on unpublished pages.
- Show a status banner to reviewers.
- Hide analytics-related blocks on drafts.
- Show a publishing checklist block.
- Hide a print button on drafts.
- Show a review instruction block.
- Hide a subscribe block on unpublished pages.
- Show an unpublished-content warning.
- Hide a related-content block on drafts.
- Support an editorial preview workflow.
- Show different blocks by publication state.
