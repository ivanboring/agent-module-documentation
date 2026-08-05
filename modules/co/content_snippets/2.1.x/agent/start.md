<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Content Snippets (content_snippets) — agent index

Small editable pieces of content stored as **configuration**. Version **2.1.0**.
Core requirement `^8 || ^9 || ^10 || ^11`.

**The permission split is the distinguishing feature and it is exactly right:**
- **`administer content snippets`** — *which* snippets exist. A **structural** decision.
- **`edit content snippets`** — *what they say*. Described as "generally for content editors". An
  **editorial** decision.

Conflating those two is why the custom-block workaround goes wrong.

**The trade to settle before adopting** — recorded in this campaign for `text_block` (wave 58),
`custom_markup_block` (wave 64) and `texts` (wave 70): **configuration deploys with the codebase**,
so snippets are reviewable in a diff **and are overwritten by a configuration import**. An editor's
change on production is lost at the next deployment unless the workflow accounts for it. That is
either exactly right (wording that is a design decision) or exactly wrong (wording that is
editorial). **Check whether the module exports or ignores the snippet bodies.**
