<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Twig Renderable (twig_renderable) — agent index

Twig extension adding functions for **building and manipulating render arrays inside templates**.
No dependencies, no configuration. Version **8.x-1.5**.
Core requirement `^8 || ^9 || ^10 || ^11`.

**The boundary it crosses is deliberate:** Drupal's template layer receives render arrays and prints
them, and gives templates little ability to construct one — logic in preprocess, presentation in
Twig. That is sound, and it is friction for small cases: wrapping a value in a `#type` element,
conditionally attaching a library, adding a cache tag, building a link array without a preprocess
function whose only job is that line.

**Use it with a clear view of the trade:**
- **Logic in templates is outside the debugger's easy reach and outside a unit test.** A codebase
  that assembles render arrays in Twig is one where the next developer must read the templates to
  learn what a page loads.
- **Preprocess remains right for anything with a condition in it.** The honest use here is the
  one-line wrapper case.
- **Cache metadata added from a template is easy to get wrong in the direction that matters.** A
  missing **cache tag** is a stale page; a missing **cache context** is a page served to the wrong
  person — and the second becomes a security finding, not a bug report.
