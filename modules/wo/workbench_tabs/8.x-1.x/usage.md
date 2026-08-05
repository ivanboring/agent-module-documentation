<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Workbench Tabs puts Drupal's local task tabs and status messages in the same place on every page, rather than wherever the current theme happens to render them.

---

An editor moves between the front-end theme and the admin theme constantly — view a node, edit it, view it again — and the two themes put the tab row and the message region in different places, at different widths, with different styling. The result is that the controls an editor uses most move around, and the confirmation that a save worked appears somewhere different depending on which side of the site they are on. On a front-end theme that never anticipated administrative use, the tab row may be squeezed into a content column or, if the theme forgot the region, absent entirely. Fixing the position is a small change with a large aggregate effect, because it is paid on every content operation. Version **8.x-1.8** on `^9 || ^10 || ^11`, part of the Workbench family, with a `use workbench_tabs` permission so the treatment applies to editors rather than to everyone. Two things to verify, the same two that apply to any relocation of these elements. **Status messages carry `aria-live`**, so a new message is announced without moving focus — relocating them must preserve that, or feedback becomes visual-only for screen-reader users. And **local tasks are navigation**: they must remain keyboard reachable with a visible focus indicator and the active tab distinguishable by more than colour, which is where cosmetic changes to this row usually go wrong.

---

- Keep editor tabs in one place site-wide.
- Show status messages consistently.
- Fix tabs missing from a front-end theme.
- Improve editorial consistency.
- Show a save confirmation reliably.
- Reduce editor confusion between themes.
- Keep local tasks visible on every page.
- Improve a Workbench-based workflow.
- Fix a squeezed tab row.
- Show messages in a fixed location.
- Improve editorial efficiency.
- Support editors working across themes.
- Restrict the treatment to editors.
- Reduce missed confirmations.
- Improve a custom theme's admin usability.
- Show moderation tabs consistently.
- Support a content team's workflow.
- Fix inconsistent message placement.
