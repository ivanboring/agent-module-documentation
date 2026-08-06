<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Y Branch wires the branch content type into Layout Builder, so a YMCA location's page is composed from branch-specific blocks.

---

A YMCA branch page is a specific thing: hours, amenities, social links, a location, the programmes running there. Modelling it as a generic page and asking editors to assemble it each time produces inconsistent pages across dozens of locations; modelling it rigidly as a template means no branch can differ.

This module takes the middle path — the branch content type gets Layout Builder with a curated set of branch blocks available, so each location's page is composed from the same vocabulary while allowing local variation. Its dependency list is that vocabulary: social links, amenities, the branch menu, and the underlying location data from `openy_loc_branch`.

**This module cannot be enabled as composer resolves it, and it was verified.** It depends on `y_lb` (Y Layout Builder), and `ycloudyusa/y_lb` on Packagist has exactly one version — **0.1, published in 2022** — whose `core_version_requirement` is `^8 || ^9`. Drupal therefore refuses:

```
Unable to install modules: module 'y_branch_menu'. Its dependency module 'y_lb'
is incompatible with this version of Drupal core.
```

The current `y_lb` (3.x, 4.x, 5.x) lives in the YMCA's own composer repository, not on Packagist. Because this module requires `y_lb` with **no version constraint**, composer happily accepted the 2022 stub and the failure surfaced later, at enable time.

There is an instructive contrast inside the same family: `lb_branch_hours_blocks` **does** constrain the version (`y_lb ^4 || ^5`), so it failed loudly at composer time with a resolvable explanation. The modules that look laxer fail quietly and later. Adding the YMCA composer repository is the fix; documentation here is written from source.

---

- Compose a YMCA branch page in Layout Builder.
- Give every location the same block vocabulary.
- Allow one branch to differ from another.
- Show a branch's amenities.
- Show a branch's social links.
- Add a branch sub-menu.
- Model location data with openy_loc_branch.
- Add the YMCA composer repository.
- Diagnose a y_lb incompatibility at enable time.
- Understand why composer accepted a 2022 stub.
- Constrain y_lb explicitly in a project.
- Plan a multi-location site.
- Audit a YMCA site's branch composition.
- Keep branch pages consistent across locations.
- Document the branch composition for a team.
- Report the missing y_lb constraint upstream.
