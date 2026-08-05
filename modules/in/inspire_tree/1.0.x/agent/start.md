<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Inspire Tree (inspire_tree) — agent index

Provides the **Inspire Tree** JavaScript library as a Drupal asset library — lazy-loaded nodes,
in-tree search, multi-select with parent/child propagation, file-browser expand/collapse. Settings
at `/admin/config/services/system/inspire-tree` behind `administer site configuration`.
Version **1.0.6**. Core requirement `^8.8 || ^9 || ^10 || ^11`.

**Flag this before installing — it has site-wide reach.** The info.yml contains:
```yaml
libraries-override:
  core/underscore: inspire_tree/lodash
```
**Installing this module replaces core's Underscore with Lodash for the entire site.** The two are
broadly compatible by design and the substitution is common, but it is a **global change made by a
module whose stated purpose is a tree widget** — any other code depending on `core/underscore` now
runs against a different implementation. Check this on a site with significant custom JavaScript.

**The problem it addresses:** Drupal renders hierarchies as indented tables with drag handles,
which stop being usable past a couple of hundred rows — a 400-term vocabulary, a deep menu, a
category picker.

Like other library providers, it does nothing alone — other code must attach it.
