<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Speedboxes (speedboxes) — agent index

Drag to check/uncheck **runs of checkboxes**. Version **2.0.1**. Core `^10 || ^11`.

Same territory as `permissions_dragcheck` (wave 86), and the same caution: the **permissions page is
where clicking quickly is most expensive**. An accidentally granted permission looks identical
afterwards to a deliberate one.

Mitigation is not avoidance but **reviewing the resulting role** — read back what it holds, watch
anything marked `restrict access`, and export configuration so the change lands in a diff.