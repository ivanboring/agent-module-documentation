<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Cool Editor Tabs restyles Drupal's local task tabs — View, Edit, Revisions, Delete — for better legibility and usability.

---

Local tasks are the row an editor uses more than anything else on the site, and their presentation has never had much attention: a horizontal strip that wraps awkwardly at narrow widths, becomes unreadable when a module adds a fifth and sixth tab, and looks different in every admin theme. On a site with moderation, translation, layout and devel enabled, a node can carry eight tabs, and finding "Edit" among them takes a moment every time. Improving that is a small change with a large aggregate effect, because it is paid back on every content operation. Version **2.0.0** on **`^11.1`** — a notably tight core requirement pinning it near a single minor — with a `use cool editor tabs` permission explicitly declared `restrict access: false`, which is a deliberate statement rather than an omission: the module changes presentation for whoever holds it and grants no capability. Two things worth checking with any tab-restyling module, since they are where cosmetic changes cause real problems. **Local tasks are navigation and must stay keyboard-reachable**, with a visible focus indicator and a sensible tab order — a restyle that removes the focus outline is an accessibility regression that nobody notices until someone tries to use the site without a mouse. And **the active tab must remain distinguishable by more than colour**, since colour alone fails both colour-blind users and the WCAG requirement that information is not conveyed by colour alone.

---

- Improve the editor tab row's legibility.
- Make Edit easier to find among many tabs.
- Fix tabs wrapping badly on narrow screens.
- Improve admin usability for editors.
- Restyle local tasks consistently.
- Handle a node with eight tabs.
- Improve a moderation-heavy workflow.
- Make revisions tabs clearer.
- Improve tab styling in a custom admin theme.
- Reduce editorial friction.
- Improve tab appearance on mobile.
- Clarify the active tab.
- Support a translation-heavy editing flow.
- Improve first-time editor orientation.
- Tidy a cluttered task row.
- Improve contrast on editor tabs.
- Support a site with many contributed tabs.
- Modernise the editing interface.
