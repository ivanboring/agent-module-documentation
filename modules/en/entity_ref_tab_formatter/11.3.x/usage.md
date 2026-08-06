<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity Reference Tab Formatter renders a multi-value entity reference field as accessible tabs or an accordion.

---

A repeating field of referenced entities — paragraphs on a page, related items, a set of sections — is often designed as tabs or an accordion. Doing that in a template means the markup and its behaviour live in the theme, per view mode, and get rewritten per project.

As a field formatter it becomes a Manage-display choice, and the referenced entities render through their own view modes, so each panel is still a properly rendered entity rather than markup extracted from one.

**The word 'accessible' in the description is the claim worth checking**, because it is the part these patterns usually get wrong. For tabs: arrow keys moving between tabs, Tab moving into the panel, `aria-selected` on the active tab, and each panel associated with its tab. For an accordion: headers as real buttons with `aria-expanded` and `aria-controls`, and content reachable by keyboard. A module claiming accessibility is a good sign; verify it against the rendered markup anyway, because these two patterns are the ones most often shipped as styled divs with a click handler.

The other thing to decide is the same for both patterns and is editorial rather than technical: content in a panel other than the first is seen by few visitors and weighted less by search engines, so the pattern suits alternatives and not a way to fit more onto a page.

---

- Render referenced entities as tabs.
- Render paragraphs as an accordion.
- Choose the pattern per view mode.
- Keep panel content as rendered entities.
- Avoid template-level tab markup.
- Verify arrow-key navigation between tabs.
- Check aria-selected on the active tab.
- Check accordion headers are buttons.
- Verify aria-expanded reflects state.
- Ensure keyboard access to panel content.
- Avoid important content on a later panel.
- Consider search visibility of hidden panels.
- Reuse the formatter across content types.
- Audit the rendered markup for accessibility.
- Document this module's behaviour for the team.
- Review it during a site audit.
- Verify its assumptions after an upgrade.
