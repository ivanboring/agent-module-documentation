<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Gin Toolbar Local Tasks moves Drupal's local task tabs into the toolbar, for sites using the Gin admin theme.

---

Gin is now the most widely used contrib admin theme and the direction core's own administration is moving, and it rearranges the administrative interface substantially — which leaves the local tasks row in an awkward position, since it was designed for a layout Gin no longer has. The tabs are the controls an editor uses most, and their placement is one of the standing complaints about administrative Drupal in any theme: they push content down, they sit differently in every theme, and they multiply on a site with moderation, translation and layout enabled. Putting them in the toolbar gives a fixed location that does not move the page, which is what a set of persistent controls should have. Version **2.0.0** on core `^10 || ^11`, depending on core `toolbar`. Two things to check, and they are the same two that apply to every relocation of these elements in this campaign. **Local tasks are navigation**, so they must remain keyboard reachable with a visible focus indicator and the active tab distinguishable by more than colour — which is where cosmetic changes to this row usually go wrong. And **the toolbar is itself contested space**: core's `navigation` module is replacing the toolbar in newer releases, so a module placing things into the old toolbar is building on something the project is moving away from, and its longevity depends on following that transition. Compare `workbench_tabs` and `admin_toolbar_messages`, documented earlier, which address the same placement problem from different directions.

---

- Move editor tabs into the Gin toolbar.
- Keep local tasks in a fixed position.
- Stop tabs pushing content down.
- Improve Gin's editorial layout.
- Tidy a crowded task row.
- Make Edit easier to find in Gin.
- Improve editing on narrow screens.
- Give tabs a consistent location.
- Reduce editorial friction in Gin.
- Improve a moderation workflow's interface.
- Keep revisions tabs accessible.
- Improve translation tab placement.
- Support a Gin-themed editorial site.
- Reclaim vertical space in admin.
- Improve first-time editor orientation.
- Keep tabs visible while scrolling.
- Tidy the admin interface.
- Support a content team using Gin.
