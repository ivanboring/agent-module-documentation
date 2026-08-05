<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Revision Author Tokens exposes the author of a node **revision** as tokens, so a notification or a rendered field can say who made the latest change rather than who originally created the node.

---

Drupal's node tokens include `[node:author]`, which is the node's owner — the person who created it, and frequently not the person who just edited it. For any message about a change ("X updated this page", "your article was edited by Y", a moderation notification naming the reviewer) the useful identity is the *revision* author, and core provides no token for it. This module adds them, in `revision_author_tokens.tokens.inc`, with core `token` as its only dependency and no routes, permissions or configuration — five files in total, on core `^10 || ^11`. Because they are ordinary tokens, they work anywhere tokens are consumed: Rules and ECA actions, message templates, Metatag, Pathauto patterns and mail bodies. The usual token caution applies with particular force here: a token that names a person places identity information wherever it is rendered, so a pattern that puts a revision author into a public URL alias or a meta description is disclosing who edited a page to everyone who reads it.

---

- Name the person who made the latest edit.
- Send a notification saying who changed a page.
- Include the reviewer in a moderation message.
- Show the last editor in a rendered field.
- Build a message template naming the editor.
- Distinguish creator from last editor.
- Drive an ECA action with the revision author.
- Log who changed content in an email.
- Attribute a change in a workflow notification.
- Include the editor in an audit message.
- Show the revision author in a view header.
- Notify a team of who published a page.
- Personalise an editorial notification.
- Reference the editor in a metatag.
- Use the revision author in a Rules condition.
- Report on recent editors.
- Name the approver in a confirmation.
- Improve accountability in editorial messaging.
