<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# External Link a11y — agent index

Adds **`target="_blank"` to external links accessibly** (screen-reader new-window cue + proper `rel`). Depends
on core `link`. Version **1.2.0**. Core `^10.3||^11||^12`.

Accessibility/content-display — encodes the safe pattern (pair `target="_blank"` with `rel="noopener"` to
avoid reverse-tabnabbing). No access role.
