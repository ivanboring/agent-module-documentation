<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Twig Events (twig_events) — agent index

Wraps Drupal's **Twig engine** to dispatch Symfony **events at key rendering points**. Submodule
`twig_events_engine`. No dependencies, permissions or configuration — infrastructure another module
builds on. Version **1.0.1**. Core requirement `^9 || ^10 || ^11`.

**The gap it fills:** Drupal's theme layer has preprocess functions and template overrides, but **no
general hook that fires around the rendering of a template**. Profilers, debug annotators, cache
instrumentation and anything that needs to know a template was reached otherwise hand-decorate
`TwigEnvironment` — fragile against core changes. This does that decoration once.

**Two things follow:**
1. **Useless alone.** Enabling it changes nothing visible; the value is entirely in what subscribes.
   A site with it enabled and no subscriber carries an indirection for nothing.
2. **An event per template render is a hot path.** A Drupal page renders **hundreds** of templates,
   so a subscriber doing real work runs hundreds of times per request. Fine for a development-time
   profiler; measure before it reaches production.
