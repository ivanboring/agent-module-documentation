<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Pluggable Entity View Builder (pluggable_entity_view_builder) — agent index

Moves entity rendering into **PHP classes — one per bundle, a method per view mode** — instead of
preprocess functions and Twig templates. Example submodules, including one for **paragraphs**.
From **Gizra**, and opinionated. Version **1.2.7**. Core requirement `^10 || ^11`.

**What it replaces:** Drupal spreads rendering across a preprocess function, a template, per-field
formatters and possibly an alter hook — four files in three directories, **no type checking, no
autocompletion, nothing an IDE can follow**. The logic deciding what a card shows ends up in a
preprocess function that is neither testable nor obviously where to look.

In a class it becomes constructor-injected, typed, testable code returning an ordinary render array.

**Two things follow:**
1. **Cache metadata becomes the class's responsibility.** A render array built in PHP carries only
   the contexts, tags and max-age it is **given** — the theme layer will not supply them. A
   component varying by user **must say so** or be cached wrongly.
2. **It is a team decision, not a per-feature one.** A codebase with half its rendering in templates
   and half in view builders is harder to work in than either alone. **Adopt it consistently or not
   at all.**
