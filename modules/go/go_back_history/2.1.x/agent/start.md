<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Go Back History (go_back_history) — agent index

One block plugin rendering a browser-history back link.
Version **2.1.0**. Core `^10.1 || ^11 || ^12`. Depends on `block`.
No routes, no permissions, no config object — configured per block placement.

Classes: `Plugin/Block/GoBackHistoryBlock`, `Hook/GoBackHistoryHooks`.

Two points to raise: a visitor arriving on a deep link from email or search has **no history**, so
decide the fallback before placing it prominently; and it is a gesture, not structure — keep
breadcrumbs or a real parent link for the structural relationship.