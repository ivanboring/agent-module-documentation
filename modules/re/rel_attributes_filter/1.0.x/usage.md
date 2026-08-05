<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Rel Attributes Filter adds `rel` attributes to links in filtered text — `nofollow`, `noopener`, `noreferrer` — as a text format filter, so editors do not have to add them and cannot forget.

---

Two separate problems share this solution. The SEO one is `rel="nofollow"` on user-contributed or outbound links, which stops a site's authority flowing to spam and is the standard defence on any site with comments or community content. The security one is `rel="noopener"` on links opening in a new tab: without it, the opened page gets a reference to the opener through `window.opener` and can navigate the original tab elsewhere — the "tabnabbing" pattern. Modern browsers imply `noopener` for `target="_blank"`, but older ones do not and the attribute remains the correct explicit defence. Handling both in a **text filter** rather than in the editor is the right architecture, because it applies at render time to all content — including content that predates the rule, content imported by migration and content submitted through an API — where a CKEditor plugin would only affect what is typed after it was installed. The module is small (`src/Plugin` plus a `.module` file), depends on core only, and spans `^8 || ^9 || ^10 || ^11`. Filter order matters: it must run where it can see the rendered anchors.

---

- Add nofollow to outbound links.
- Add noopener to links opening in a new tab.
- Prevent tabnabbing from external links.
- Stop authority flowing to spam links.
- Apply rel attributes to existing content.
- Enforce a link policy without editor effort.
- Add noreferrer to third-party links.
- Apply rules per text format.
- Cover migrated content automatically.
- Handle links submitted through an API.
- Reduce SEO risk from user-generated content.
- Apply rel attributes to comment links.
- Standardise link behaviour across a site.
- Meet a security review recommendation.
- Avoid relying on editors to remember.
- Apply rules at render time.
- Support an older browser audience.
- Configure per text format.
