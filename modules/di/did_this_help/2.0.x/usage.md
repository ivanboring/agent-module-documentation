<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Did This Help displays a block with a "Did this help" question and Yes/No feedback.

---

Did This Help displays a **"Did this help?" feedback block** — a Yes/No (helpful?) prompt, optionally with
a free-text comment, storing responses (path, title, message, uid, IP) so you can gauge how useful pages are.
It provides its own permissions, in the Technocrat package.

Use it to collect page-helpfulness feedback. It is a user-engagement feature. Security notes (reviewed): the
submit is a standard Drupal form (so it carries **CSRF form-token protection**) and all stored strings are
**`Html::escape()`-d** (no stored XSS). **Caveat: there is no rate-limiting/flood control** on submissions —
identical rows are de-duplicated, but a client varying the free-text message can flood the `did_this_help`
table, so if you place the block for **anonymous** users it's a low-severity spam/DB-bloat vector; add flood
control (e.g. per-IP) and/or gate the block by permission for anonymous placements. It has no access-control
role beyond its permission. Configure and place the block.

---

- Show a 'was this helpful?' block.
- Collect Yes/No feedback.
- Optionally take a comment.
- Store path/title/message/uid/IP.
- Provide its own permissions.
- Carry CSRF form-token protection.
- Escape stored strings (no XSS).
- KNOW there is no flood control on the vote.
- Add flood control for anonymous placements.
- Gate the block for anonymous users.
- Have no access-control role beyond permission.
- Configure and place the block.
- Handle feedback.
- Collect responses.
- Configure the block.
- Gauge helpfulness.
- Handle the block.
- Show feedback.
- Rate-limit submissions.
- Provide helpfulness feedback.
