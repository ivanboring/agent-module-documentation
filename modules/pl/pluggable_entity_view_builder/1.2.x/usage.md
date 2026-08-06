<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Pluggable Entity View Builder moves entity rendering into PHP classes — one per bundle — instead of preprocess functions and Twig templates.

---

Drupal's theme layer splits rendering across several places: a preprocess function prepares variables, a template arranges them, a formatter renders each field, and a hook may alter any of it. For a simple site that separation is a feature. For a component-driven build it produces a rendering path spread over four files in three directories with no type checking, no autocompletion and nothing an IDE can follow — and the logic that decides what a card shows ends up in a preprocess function that is neither testable nor obviously the place to look. Putting the build in a class inverts that: one class per bundle, a method per view mode, constructor injection for whatever it needs, and a return value that is an ordinary render array. It becomes code a developer can read, test and refactor. The approach comes from Gizra and is opinionated in a way worth understanding before adopting it, because it changes where a team looks for rendering logic. Version **1.2.7** on core `^10 || ^11`, with example submodules including one for paragraphs. Two things follow. **Cache metadata becomes the class's responsibility** — a render array built in PHP carries only the contexts, tags and max-age it is given, and the theme layer will not supply them, so a component varying by user must say so or be cached wrongly. And **it is a team decision rather than a per-feature one**: a codebase with half its rendering in templates and half in view builders is harder to work in than either alone, so adopt it deliberately and consistently or not at all.

---

- Build entity output in PHP.
- Replace preprocess functions with classes.
- Make rendering logic testable.
- Build a card component in code.
- Use dependency injection while rendering.
- Refactor a complex template.
- Support a component-driven build.
- Render paragraphs from classes.
- Make rendering IDE-navigable.
- Centralise a bundle's display logic.
- Test a component's render array.
- Replace scattered preprocess hooks.
- Build a teaser in a class.
- Support a design-system implementation.
- Type-check rendering code.
- Reduce template complexity.
- Build view-mode-specific output.
- Support a large front-end codebase.
