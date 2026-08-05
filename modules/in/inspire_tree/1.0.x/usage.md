<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Inspire Tree provides the Inspire Tree JavaScript library to Drupal, for building interactive hierarchical tree interfaces.

---

Drupal is full of hierarchies presented badly. A taxonomy vocabulary with four hundred terms is an indented table with a drag handle. A menu with several levels is the same. A file structure, an organisational chart, a category picker in a form — each is a tree, and each is usually rendered as a flat list with indentation, which becomes unusable past a couple of hundred rows. Inspire Tree is a library for the job: lazy-loaded nodes, search within the tree, multi-select with parent/child propagation, and the expand-collapse behaviour people expect from a file browser. This module makes it available as a Drupal asset library so other code can attach it. Version **1.0.6** on `^8.8` through `^11`, with a settings form at `/admin/config/services/system/inspire-tree` behind `administer site configuration`. One detail in the info.yml is worth flagging because it has site-wide reach: **`libraries-override: core/underscore: inspire_tree/lodash`** — installing this module replaces core's Underscore library with Lodash for the entire site. The two are broadly compatible by design and it is a common substitution, but it is a global change made by a module whose stated purpose is a tree widget, so any other code depending on `core/underscore` is now running against a different implementation. Check that before installing it on a site with significant custom JavaScript.

---

- Render a large taxonomy as a tree.
- Build a hierarchical category picker.
- Show an organisational chart.
- Add search within a hierarchy.
- Lazy-load deep tree branches.
- Multi-select with parent propagation.
- Improve a menu editing interface.
- Present a file structure.
- Build a location hierarchy selector.
- Replace an indented table.
- Make a large vocabulary usable.
- Add expand-collapse to a hierarchy.
- Build a product category browser.
- Show a nested structure in a form.
- Improve a term reference widget.
- Present a document hierarchy.
- Build a permissions tree UI.
- Provide a shared tree library.
