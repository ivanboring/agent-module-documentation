<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
External Link a11y adds a target blank attribute on external links in an accessible way.

---

External Link a11y makes **external links open in a new tab accessibly** — it adds `target="_blank"` to
external links along with the accessibility cues that should accompany it (a screen-reader hint that the link
opens in a new window, and the appropriate `rel` handling), so "open in new tab" doesn't disorient assistive-
technology users. It depends on core Link.

Use it to handle external links accessibly. It is an accessibility/content-display feature. A good practice it
encodes: opening links in a new tab should include `rel="noopener"` to avoid the reverse-tabnabbing risk of
`target="_blank"` — pairing target with proper rel is the safe pattern. It has no access-control role.
Configure which links are treated as external.

---

- Add target=_blank to external links.
- Open external links accessibly.
- Add a screen-reader new-window cue.
- Handle rel appropriately.
- Depend on core Link.
- Avoid disorienting AT users.
- Pair target=_blank with rel=noopener.
- Avoid reverse-tabnabbing.
- Have no access-control role.
- Configure external-link detection.
- Handle external links.
- Mark external links.
- Configure the behaviour.
- Open in new tab.
- Handle accessibility.
- Add link cues.
- Handle the links.
- Mark new-tab links.
- Configure links.
- Provide accessible external links.
