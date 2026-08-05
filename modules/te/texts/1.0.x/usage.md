<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Texts manages reusable snippets of text as first-class items, so strings that appear across a site — a call-to-action label, a disclaimer, a form's help text — are edited in one place rather than hunted through templates and blocks.

---

Every site accumulates strings that are neither content nor code: the wording on a button, a standard disclaimer, the sentence above a form. They end up hard-coded in templates (needing a deploy to change), in blocks (deployable but heavy for a sentence), or duplicated in several places until they disagree. This module gives them a home, with a `texts_graphql` submodule exposing them to a GraphQL consumer — which is the notable part, since a decoupled front end has exactly the same problem and normally solves it by hard-coding, so the front end can read the same strings the Drupal side uses. Core requirement is `^10 || ^11`. The design question worth asking is **who owns the strings**: managed as configuration they deploy with the codebase and are reviewable, but an editor cannot change them without a deployment; managed as content the opposite holds. The right answer depends on whether the wording is a design decision or an editorial one, and it is worth settling deliberately — this is the same trade recorded for `text_block` and `custom_markup_block` elsewhere in this campaign.

---

- Manage a call-to-action label in one place.
- Edit a standard disclaimer centrally.
- Avoid hard-coded strings in templates.
- Share strings with a decoupled front end.
- Expose snippets over GraphQL.
- Keep repeated wording consistent.
- Translate reusable strings.
- Change a button label without a deploy.
- Store form help text centrally.
- Avoid duplicated wording.
- Support a design system's copy.
- Manage legal wording in one place.
- Provide strings to a mobile app.
- Keep copy under review.
- Reduce template edits for wording changes.
- Support a copywriting workflow.
- Version-control site copy.
- Reuse a snippet across content types.
