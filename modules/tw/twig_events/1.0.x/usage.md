<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Twig Events wraps Drupal's Twig engine so that events are dispatched at key points in template rendering, giving code a place to intervene that Drupal otherwise does not provide.

---

Drupal's theme layer offers preprocess functions and template overrides, which cover most needs and leave a specific gap: there is no general hook that fires *around* the rendering of a template. Anything that wants to observe or wrap rendering — a profiler measuring which templates are slow, a debug tool annotating output with the template that produced it, a cache instrumentation layer, a system that needs to know a particular template was reached — has to resort to a `TwigEnvironment` service decoration written by hand, which is fragile against core changes. This module supplies the decoration once, with a `twig_events_engine` submodule, and dispatches Symfony events instead. Version **1.0.1** on core `^9 || ^10 || ^11`, no dependencies, no permissions, no configuration — it is infrastructure another module builds on. Two things follow from that. **It is not useful alone**: enabling it changes nothing visible, and its value is entirely in what subscribes to its events, so a site with it enabled and no subscriber is carrying an indirection for nothing. And **an event on every template render is a hot path** — a Drupal page renders hundreds of templates, so a subscriber doing real work per event is doing it hundreds of times per request; that is fine for a development-time profiler and worth measuring before it goes to production.

---

- Profile which templates are slow.
- Annotate output with template names.
- Instrument the theme layer.
- React when a template renders.
- Build a debugging tool for Twig.
- Wrap template rendering with logging.
- Measure render performance per template.
- Avoid hand-decorating the Twig service.
- Provide events to another module.
- Trace a rendering problem.
- Detect which template produced markup.
- Build a theme development tool.
- Add cache instrumentation.
- Observe render order.
- Support a performance investigation.
- Extend the theme layer's hook points.
- Build a template usage report.
- Give tooling a stable extension point.
