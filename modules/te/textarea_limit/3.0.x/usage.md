<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Textarea Limit caps how many characters can be typed into selected textarea widgets, with a live counter, so a summary field that must fit a design stops being three paragraphs long.

---

Length constraints are usually a design requirement rather than a data one: a teaser must fit a card, a meta description must fit a search result, a strapline must not wrap onto three lines. Drupal's field settings offer a maximum length on some field types and nothing at all on textareas, so the constraint ends up as a note in a style guide that nobody reads while typing. This module makes it visible and enforced: a settings form at `/admin/config/content/textarea-limit` behind its own `administer textarea_limit` permission selects which widgets are limited, with `css/textarea_limit.css` and a libraries entry supplying the counter. It depends only on core, with a range of `^9 || ^10 || ^11`. One thing worth being explicit about when recommending it: a JavaScript counter is an editorial aid, not validation — it guides the person typing, and anything that submits without running the script is unaffected. Where the limit must actually hold, pair it with a server-side constraint on the field. Compare `maxlength` (a `varbase_core` dependency seen in wave 56), which covers similar ground.

---

- Limit a teaser field to a card's length.
- Show a live character counter to editors.
- Keep meta descriptions within search-result length.
- Stop straplines wrapping onto three lines.
- Enforce a style guide's length rule visibly.
- Limit a summary on a specific content type.
- Guide editors while they type.
- Reduce design breakage from long text.
- Apply limits per widget.
- Show remaining characters as feedback.
- Keep social sharing text within limits.
- Constrain a caption field.
- Reduce editorial review comments about length.
- Support a fixed-height component design.
- Limit a listing's excerpt.
- Configure limits without code.
- Delegate limit configuration by permission.
- Improve consistency across a content type.
