<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Twig Renderable adds Twig functions for building and manipulating render arrays from inside a template.

---

Drupal's template layer receives render arrays and prints them, and deliberately gives templates little ability to construct one. That boundary is sound in principle — logic belongs in preprocess, presentation in Twig — and it is friction in practice for a class of small cases: wrapping a value in a `#type` element, attaching a library conditionally, adding a cache tag from a template that already knows what it depends on, or building a link render array without a preprocess function whose only job is that one line. This module supplies functions for those, version **8.x-1.5** on `^8` through `^11`, no dependencies and no configuration — a Twig extension and nothing else. Use it with a clear view of the trade, because it is real. **Logic in templates is logic outside the debugger's easy reach and outside a unit test**, and a codebase where render arrays are assembled in Twig is one where the next developer has to read the templates to understand what a page loads. **Preprocess remains the right place for anything with a condition in it**, and the honest use for this module is the case where a preprocess function would exist solely to move one value into one wrapper. And **cache metadata added from a template is easy to get wrong in the direction that matters**: a missing cache tag is a page that goes stale, a missing cache context is a page served to the wrong person, and the second is the one that becomes a security finding rather than a bug report.

---

- Wrap a value in a render element from Twig.
- Attach a library conditionally in a template.
- Build a link render array in Twig.
- Avoid a preprocess function for one line.
- Add a cache tag from a template.
- Render a nested array from Twig.
- Build a small element inline.
- Prototype a template change quickly.
- Reduce preprocess boilerplate.
- Construct a render array in a theme.
- Attach assets from a template.
- Wrap output in a container element.
- Build a conditional element.
- Render a value with a formatter.
- Add attributes to a render array.
- Simplify a template's markup.
- Compose elements in Twig.
- Reduce theme layer indirection.
