<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Token Entity Render (token_entity_render) — agent index

Tokens that **render a whole entity in a chosen view mode**, rather than substituting one field's
value. Version **2.0.0**. Core requirement `^9 || ^10 || ^11`.

**The gap it fills:** Drupal's tokens are field-level (`[node:title]`, `[node:field_summary]`).
Nothing covers "put the rendered thing here" — an email containing the article as it appears on the
site, a digest of several nodes, a PDF template, a block embedding a rendered teaser.

**State this before anyone builds on it — it is what makes rendering tokens different from field
tokens: a rendered entity carries access and cache metadata, and a token substitution is a
string.**
1. **Access.** Rendering into an email sent by **cron** renders as whoever cron is — usually with no
   user context. An **unpublished node, an access-restricted field or a personalised block** can be
   rendered into a message and sent to someone who could not view any of it. Render with an
   **explicit account**.
2. **Cache metadata has nowhere to go** once the result is a string, so the containing page or email
   does not inherit the cache tags of what it contains. Add them **deliberately**.

Neither failure is visible when it happens.
