<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
External Links opens links pointing off the site in a new tab, adding the attributes that implies.

---

The behaviour is one of the most requested and least examined on any site. The argument for it is that a visitor following a reference should not lose their place, and it is a real argument for a specific case — a form part-completed, a video part-watched, a long document part-read. The argument against is larger and is worth putting to whoever asks for it. **It takes the back button away**: the browser's most-used control does nothing in the new tab, and the visitor who expected to return has to notice that the tab changed. **It is a change of context that must be announced**, which is a WCAG concern rather than a preference — a screen-reader user who is not told a new window opened has simply lost the page, so an icon alone is not enough and the announcement has to be in the accessible name. **It removes the choice from the person best placed to make it**, since anyone who wants a new tab can middle-click or ctrl-click, and nobody can undo the reverse. This module supplies the behaviour with `administer external` correctly marked `restrict access: TRUE`, version **2.0.0-alpha5** — an **alpha** — on core `^10 || ^11`. If it is used, two things are not optional: **`rel="noopener"`** so the opened page cannot reach back through `window.opener`, and a **visible and announced indication** that the link opens elsewhere.

---

- Open external references in a new tab.
- Keep a visitor's place on a long form.
- Add rel=noopener to outbound links.
- Mark external links with an icon.
- Apply a policy for outbound links.
- Keep users on a documentation page.
- Add attributes to external links site-wide.
- Distinguish internal from external links.
- Support an editorial linking policy.
- Add a warning to outbound links.
- Keep a video playing while linking out.
- Apply consistent link behaviour.
- Mark links to partner sites.
- Add security attributes to links.
- Announce a new window to screen readers.
- Configure which domains count as external.
- Support a stakeholder's link requirement.
- Reduce accidental site exits.
