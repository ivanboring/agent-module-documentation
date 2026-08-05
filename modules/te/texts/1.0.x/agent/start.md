<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Texts (texts) — agent index

Reusable text snippets managed centrally, with a **`texts_graphql`** submodule exposing them to
GraphQL consumers. Core requirement `^10 || ^11`.

Key facts:
- **The GraphQL submodule is the distinguishing feature.** A decoupled front end has the same
  hard-coded-strings problem and normally solves it by hard-coding; this lets it read the same
  snippets the Drupal side uses.
- **Settle who owns the strings before adopting it:**
  - as **configuration** — deploys with the codebase, reviewable in a diff, but an editor cannot
    change wording without a deployment;
  - as **content** — editable immediately, absent from config export.
  The right answer depends on whether the wording is a design decision or an editorial one. Same
  trade recorded for `text_block` (wave 58) and `custom_markup_block` (wave 64).
- Fills a real gap: strings that are neither content nor code otherwise live in templates (deploy
  to change), in blocks (heavy for a sentence), or duplicated until they disagree.
