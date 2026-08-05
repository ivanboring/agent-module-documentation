<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
System Messages Override replaces the wording of Drupal's built-in status, warning and error messages with text an administrator supplies.

---

Core's messages were written for people who know Drupal. "The website encountered an unexpected error" tells a visitor nothing they can act on. "Article *Foo* has been created" uses vocabulary from the content model rather than from the organisation. Messages on login, on registration, on failed access and on form validation are read at exactly the moments a user is confused, and they are the cheapest thing on a site to improve — yet the usual routes are unattractive: a translation override, which is odd on a monolingual site and hides the change in the interface translation UI, or a `hook_form_alter` per message, which is code for a wording change. A configuration screen at `/admin/config/system/messages-override` behind a `restrict access: 'TRUE'` permission is the right shape for the job. Version **1.0.2** on core `^10 || ^11`, no dependencies. Two things to keep in mind. **A replaced message is not translated** in the way the original was — core's strings come with community translations, and a custom replacement starts from nothing, so on a multilingual site check how the override interacts with the translation layer before rewording anything. And **error messages carry meaning that support and logs depend on**: rewording "Access denied" into something friendlier is good for the visitor and can make a support conversation harder, so keep enough specificity that someone can still tell which condition fired.

---

- Rewrite an unhelpful error message.
- Make a login message friendlier.
- Match messages to organisation vocabulary.
- Improve a registration confirmation.
- Reword an access-denied message.
- Clarify a form validation message.
- Remove Drupal jargon from messages.
- Improve first-time user experience.
- Localise wording for a brand.
- Soften a failure message.
- Add guidance to an error.
- Improve a checkout message.
- Reword a password-reset notice.
- Support a plain-language policy.
- Improve accessibility of feedback text.
- Align messages with a style guide.
- Reduce confusion on failed submissions.
- Reword messages without code.
