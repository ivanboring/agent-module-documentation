<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Headline Group is a field type for a composite headline — a kicker, a main headline and a subhead — marked up so the parts are distinguishable in the output.

---

Editorial headlines are rarely one string. A news article has an eyebrow or kicker above ("Analysis"), the headline itself, and often a standfirst below. Sites usually model this as three separate fields, which works and loses the relationship: nothing says these belong together, nothing stops one being filled without the others, the display settings are configured three times, and a template that wants to render "the headline" has to know about all three. A composite field keeps them as one thing with parts. Version **8.x-1.9** on `^8.8` through `^11`, no dependencies. The value the module description points at is the **markup**: rendering a kicker and a subhead correctly is a semantic question, not a styling one. HTML has no element for a subheading — `<h1>` followed by `<h2>` makes the subhead a document section it is not, which is exactly the misuse that confuses a screen reader's heading navigation — and the accepted patterns are a single heading containing a styled `<span>` for the secondary text, or the `<hgroup>` element whose specification has changed more than once. Getting that right once in a field type is better than getting it wrong in every theme, which is the argument for the module. Worth confirming which pattern this release emits before adopting it, since that is the whole point of the field.

---

- Add a kicker above a headline.
- Store a headline and subhead together.
- Model an editorial headline properly.
- Mark up a standfirst semantically.
- Keep headline parts in one field.
- Avoid three separate title fields.
- Render a headline group consistently.
- Support a news site's typography.
- Add an eyebrow label to an article.
- Configure headline display once.
- Improve heading semantics.
- Support a magazine layout.
- Keep the heading hierarchy correct.
- Add a subtitle without a second h1.
- Model a campaign page's headline.
- Support a design system's headline component.
- Render a kicker in a teaser.
- Improve screen-reader heading navigation.
