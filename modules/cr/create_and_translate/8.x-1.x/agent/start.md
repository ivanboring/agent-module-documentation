<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Create and translate (create_and_translate) — agent index

Adds a save button to the node form that saves and redirects to the node's **Translate** tab.
Version **8.x-1.5**. Core `^8 || ^9 || ^10 || ^11`.
Depends on `content_translation`, `language`, `node`, **`taxonomy`**.
No routes, no permissions, no config.

Single class: `PathProcessor/CreateAndTranslatePathProcessor`.

Two things worth mentioning: the `taxonomy` dependency is broader than the feature needs and will
be pulled onto sites that do not otherwise use it; and the `^8 || ^9 || ^10 || ^11` range spans
four majors, so verify on the target core — the surface is small enough to check in minutes.