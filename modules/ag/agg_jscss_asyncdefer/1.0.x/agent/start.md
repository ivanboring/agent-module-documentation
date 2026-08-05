<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Aggregation JS CSS async defer (agg_jscss_asyncdefer) — agent index

Adds **`async`/`defer`** to asset libraries and produces **aggregates carrying those attributes**.
Version **1.0.1**. Core requirement `^10 || ^11`.

**What core gives you instead:** the attributes per library in `libraries.yml` — but only for
libraries **you control**, and a site's script weight is mostly **core and contrib**, whose
declarations are not yours to edit. The aggregation interaction is the other half: aggregates group
libraries, so a group containing one script that must not be deferred and one that should cannot
simply be given an attribute.

**Two things make this a change to test rather than apply:**
1. **Order and timing are what break.** `async` **reorders execution**, so a script depending on
   one that has not run yet fails **intermittently** — the worst failure mode, because it depends on
   network timing and will not reproduce locally. **`defer` preserves order and is the safe
   default**; `async` only for genuinely independent scripts such as analytics.
2. **Drupal's own JavaScript has dependencies** — `drupalSettings`, `once`, behaviours attaching on
   `DOMContentLoaded`. An attribute applied broadly to core and contrib libraries is exactly where
   intermittent breakage comes from.

**Measure the gain, apply narrowly, and test on a throttled connection.**
