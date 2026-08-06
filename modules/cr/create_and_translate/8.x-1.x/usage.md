<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Create and translate puts an extra button on the node form that saves the node and lands the editor on its Translate tab instead of the saved node.

---

On a multilingual site the step after creating a node is almost always translating it, and the default path there is: save, read the confirmation, find the Translate tab, click it. That is three interactions and a page the editor did not want to look at, repeated for every piece of content. This module removes them with a second save button and a path processor (`PathProcessor/CreateAndTranslatePathProcessor`) that redirects to the translation overview.

It is a small ergonomic change with a real effect on throughput when a team is producing content in several languages daily — the kind of module that is invisible when it works and immediately missed when it is removed. Editors who are not translating simply use the normal Save button.

The dependency list is broader than the feature suggests — `content_translation`, `language`, `node` and `taxonomy` — so it will pull `taxonomy` onto a site that does not otherwise use it. The core range spans four majors, which as always says more about the maintainer's intent than about testing on Drupal 11; the surface is small enough that verifying it is a five-minute job.

---

- Save a node and go straight to its Translate tab.
- Cut three clicks out of a bilingual publishing routine.
- Create content in the source language and translate immediately.
- Speed up a daily multilingual publishing workflow.
- Keep the normal Save button for editors who are not translating.
- Reduce the chance an editor forgets to translate new content.
- Support a team producing content in several languages at once.
- Land on the translation overview rather than the saved node.
- Give translators a shorter path from creation to translation.
- Pair with machine translation for a fast first pass.
- Apply the same routine across all translatable content types.
- Remove a bespoke redirect hack from a custom module.
- Improve editor experience without changing the content model.
- Shorten a translator's route into new content.
- Verify the button on the target core version.
- Audit whether the taxonomy dependency is wanted.
