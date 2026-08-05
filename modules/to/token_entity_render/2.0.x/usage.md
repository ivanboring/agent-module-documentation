<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Token Entity Render provides tokens that render a whole entity in a specified view mode, rather than substituting a single field's value.

---

Drupal's tokens are field-level: `[node:title]`, `[node:field_summary]`, `[user:mail]`. That covers most of what a token is for and leaves a real gap wherever the requirement is "put the rendered thing here" — an email that should contain the article as it appears on the site, a scheduled digest listing several nodes, a PDF template, a block whose body embeds a rendered teaser. Building those by hand means loading the entity, getting the view builder, rendering it and injecting the markup, in a place that was expecting a string. A token that does it is a genuine convenience. Version **2.0.0** on `^9 || ^10 || ^11`, in the Token package. The thing to be careful about is the one that makes rendering tokens different from field tokens, and it is worth stating before anyone builds on it: **a rendered entity carries access and cache metadata, and a token substitution is a string**. Rendering an entity into an email sent by cron renders it as whoever cron is — usually with no user context at all — so an unpublished node, an access-restricted field or a personalised block can be rendered into a message and sent to someone who could not view any of it. And the render's cache metadata has nowhere to go when the result becomes a string, so a page or an email built this way does not inherit the cache tags of what it contains. Both are manageable — render with an explicit account, and add the tags deliberately — but neither is automatic, and neither failure is visible when it happens.

---

- Include a rendered node in an email.
- Build a digest of several articles.
- Render a teaser inside a block.
- Embed an entity in a PDF template.
- Render an entity in a chosen view mode.
- Include full content in a notification.
- Build a rendered email newsletter.
- Embed a rendered entity in a message.
- Render a product into a confirmation.
- Include an event's details in a reminder.
- Render a profile into a directory export.
- Embed a rendered entity in a metatag.
- Build a rendered summary block.
- Include a rendered card in a template.
- Render referenced entities inline.
- Build a rendered digest for subscribers.
- Embed content in a scheduled message.
- Render an entity for an external consumer.
