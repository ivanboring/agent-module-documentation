<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Media Orientation (media_orientation) — agent index

Classifies media as **portrait / landscape / square** and exposes it — chiefly as a **Views
filter**. Version **dev-1.0.x**. Core `^10 || ^11`.
Depends on **`views_filter_select`** (turns orientation into an exposed select filter) — this is a
real install-time dependency; `drush en media_orientation` fails without it.

Building block for orientation-aware media listings (masonry grids, landscape-only heroes,
portrait staff lists). Provides the classification + filter hook, not a finished gallery.