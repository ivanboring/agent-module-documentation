<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Y Branch (y_branch) — agent index

Wires the **branch content type** into Layout Builder for YMCA sites.
Version **1.1.1**. Core `^10 || ^11`.
Depends on `y_lb`, `openy_loc_branch`, `lb_branch_social_links_blocks`,
`lb_branch_amenities_blocks`, `y_branch_menu` — that list *is* the block vocabulary.

**Documented from source — cannot be enabled as composer resolves it. Verified:**
`ycloudyusa/y_lb` on Packagist has one version, **0.1 (2022)**, `core_version_requirement: ^8 || ^9`.
Drupal refuses: *"Its dependency module 'y_lb' is incompatible with this version of Drupal core."*
The current `y_lb` (3.x–5.x) is in the **YMCA's own composer repository**, not Packagist.

**Instructive contrast in the same family:** `lb_branch_hours_blocks` constrains `y_lb ^4 || ^5` and
so failed **loudly at composer time**; the modules requiring `y_lb` with no constraint accepted the
stub and failed **quietly at enable time**.