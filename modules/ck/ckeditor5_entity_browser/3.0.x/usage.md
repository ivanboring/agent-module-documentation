<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
CKEditor Entity Browser adds entity browser buttons to CKEditor 5's link dialog, so an editor can pick internal content instead of typing a URL.

---

Linking to internal content in CKEditor means knowing its URL, which means leaving the editor, finding the page, copying the address and coming back. Editors do it, get it wrong, and the result is a body of content full of links to `/node/123`, links to the wrong page, and links to a staging domain someone pasted once.

An entity browser in the link dialog removes the trip: search for the content, select it, done. And because the selection is an entity rather than a string, the link can be stored as a reference that survives a path alias change.

**That last point is the one worth checking against the implementation**, because it is the difference between a convenience and a correctness feature. A browser that inserts the resolved URL saves typing; one that inserts an entity reference means the link keeps working when the page is renamed. Both are useful; only the second fixes the underlying problem, and which this does determines whether it belongs in a content-integrity argument or just an ergonomics one.

Worth pairing with `node_alias_link_display` (wave 85), which rewrites stored `/node/123` links to their aliases at display time — the two address opposite ends of the same problem, and a site with both gets readable URLs from links stored stably.

---

- Pick internal content in the link dialog.
- Stop editors copying URLs by hand.
- Avoid links to /node/123 in body text.
- Prevent links to a staging domain.
- Search for content while linking.
- Check whether the link stores a reference.
- Keep links working after an alias change.
- Distinguish convenience from correctness.
- Pair with alias rewriting at display time.
- Configure which entity browser is used.
- Restrict the browser to certain content types.
- Reduce broken internal links.
- Audit body content for hard-coded URLs.
- Document the module's behaviour for the team.
- Review it during a site audit.
- Verify its assumptions after an upgrade.
